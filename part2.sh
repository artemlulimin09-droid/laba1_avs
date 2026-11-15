#!/bin/bash
set -e
cd "$HOME/lab0"

# Проверяем, что предыдущий запуск не оставил копии или ссылки.
for path in final_menu claude_monet/office/{max_report,kitchen_access} \
    claude_monet/hall/bar_backup claude_monet/kitchen/{cook_tasks,max_final_note} \
    claude_monet/kitchen/hot_station/senya_task_copy
do
    if [[ -e "$path" || -L "$path" ]]; then
        echo "Уже существует: $path. Остановлено до внесения изменений." >&2
        exit 1
    fi
done

cp claude_monet/locker_room/max_note claude_monet/office/max_report
cp -R claude_monet/bar claude_monet/hall/bar_backup
ln -s claude_monet/kitchen/barinov_order final_menu
ln -s ../kitchen claude_monet/office/kitchen_access
ln claude_monet/kitchen/hot_station/senya_task claude_monet/kitchen/hot_station/senya_task_copy
cat claude_monet/kitchen/hot_station/senya_task claude_monet/kitchen/hot_station/fedya_task > claude_monet/kitchen/cook_tasks
cat claude_monet/hall/waiter_plan >> claude_monet/office/vika_summary
mv claude_monet/locker_room/max_note claude_monet/kitchen/max_final_note
