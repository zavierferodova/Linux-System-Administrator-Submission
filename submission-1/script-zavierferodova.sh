while true
do
    clear # Clearing console
    echo "Show memory usage with mega bytes units:" # Show message
    free --mega -w && echo "" # Show memory usage with wide output format and mega bytes units then print a line break
    sleep 3s # Delay for 3 seconds

    echo "Show memory usage with giga bytes units:" # Show message
    df -BG --output=source,used && echo "" # Show disk usage with giga bytes units then print a line break
    sleep 3s # Delay for 3 seconds

    echo "Show memory usage with percentage units:" # Show message
    df -x tmpfs --output=source,pcent && echo "" # Show disk usage with percentage units and exclude tmpfs then print a line break
    echo "Press [Ctrl+C] to stop.." # Show message
    sleep 1m # Delay for 1 minutes
done