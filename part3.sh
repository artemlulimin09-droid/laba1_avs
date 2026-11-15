#!/bin/bash
set -e
cd "$HOME/lab0"
export LC_ALL=C.UTF-8

echo 'Задание 4.1'
# part1.sh–part4.sh лежат в lab0 для сдачи и не входят в дерево варианта.
ls -lRn --time-style=long-iso --ignore='part[1-4].sh' . | grep '^-' | sort -k5,5nr | head -n 5

echo 'Задание 4.2'
grep -rhiE 'баринов|макс' claude_monet | grep -vi 'порц' | sort | head -n 6

echo 'Задание 4.3'
grep -ilE 'кост|наст' claude_monet/bar/* claude_monet/hall/bar_backup/* | wc -l

echo 'Задание 4.4'
{
    head -q -n 1 claude_monet/kitchen/hot_station/*_task
    tail -q -n 1 claude_monet/kitchen/hot_station/*_task
} | grep -iE 'сеня|федя|продукт' | sort -r

echo 'Задание 4.5'
grep -vE 'Сеня|Федя' claude_monet/kitchen/cook_tasks | sort -r | head -n 4 | wc -w

echo 'Задание 4.6'
ls -liRn --time-style=long-iso . |
    grep -E '^[[:space:]]*[0-9]+[[:space:]]+-[^[:space:]]+[[:space:]]+2[[:space:]]' |
    sort -k1,1n

echo 'Задание 4.7'
ls -lRn --time-style=long-iso . | grep '^l' |
    grep -vE '[[:space:]][^[:space:]]*final[^[:space:]]*[[:space:]]+->' |
    sort -k8,8
