@program_id("J5J3mD4ABcRtB7YcgrJBgugiQAP3DfcZi5bSAdiMAZWh")
contract lever {
    // Switch state
    bool private isOn = true;

    @payer(payer) // payer for the data account
    constructor() {}

    // Switch the power on or off
    function switchPower(string name) public {
        // Flip the switch
        isOn = !isOn;

        // Print the name of the person who pulled the switch
        print("{:} is pulling the power switch!".format(name));

        // Print the current state of the switch
        if (isOn){
            print("The power is now on.");
        } else {
            print("The power is now off!");
        }
    }

    // Get the current state of the switch
    function get() public view returns (bool) {
        return isOn;
    }
}
