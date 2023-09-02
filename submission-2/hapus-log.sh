while true
do
    clear # Clear terminal
    echo "Journal usage before deletion :" # Show message
    journalctl --disk-usage && echo "" # Show journal usage then print a line break
    sleep 3s # Delay for 3 seconds

    echo "Deleting journal logs with for about 10MB..." # Show message
    journalctl --vacuum-size=10000 && echo "" # Delete journal logs with for about 10MB then print a line break
    sleep 3s # Delay for 3 seconds

    echo "Journal usage after deletion :" # Show message
    journalctl --disk-usage && echo "" # Show journal usage then print a line break
    sleep 3s # Delay for 3 seconds

    echo "Press [Ctrl+C] to stop.." # Show message
    sleep 1m # Delay for 1 minutes
done