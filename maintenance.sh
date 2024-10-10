#!/bin/bash
show_menu() {
	echo "============================"
	echo "  Sustem Maintence Utility  "
	echo "============================"
	echo "1. Check Disk Usage"
	echo "2. Backup Files"
	echo "3. CleanUp Log Files"
	echo "4. Monitor System Health"
	echo "5. Search for Files"
	echo "6. Exit"
	echo "============================"
}
check_disk_usage() {
echo "Vhecking disk usage..."
df -h #Displaydisk usage in human-readable format
}	
backup_files() { 
       echo "Backing up files..."
#specify the source and backup dir
#src_dir="/path/to/source"
#backup_dir="/path/to/backup"
# create backup dir if not exist	
#mkdir -p "$backup_dir"
#use rsync to backup files

#rsync -av --delete"
echo "Backup done"
}
cleanup_logs(){  
echo "cleanup log done"
}
monitor_health(){  
	echo "checkup monitored"
}
search_files() {
	echo "search the given fiies"
}

while true; do
	show_menu
	read -p "Select an Option: " choice
	case $choice in
		1) check_disk_usage ;;
		2) backup_files ;;
		3) cleanup_logs ;;
		4) monitor_health ;;
		5) search_files ;;
		6) exit 0 ;;
		*) echo "Invalid option. Please try again." ;;
	esac
done
