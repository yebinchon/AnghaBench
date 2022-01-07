
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print_help_msg (char*,char*,char*,char*,int) ;

__attribute__((used)) static void print_main_application_options ( int is_term )
{
    print_help_msg ( "-no-config", "", "Do not load configuration, use default values.", ((void*)0), is_term );
    print_help_msg ( "-v,-version", "", "Print the version number and exit.", ((void*)0), is_term );
    print_help_msg ( "-dmenu", "", "Start in dmenu mode.", ((void*)0), is_term );
    print_help_msg ( "-display", "[string]", "X server to contact.", "${DISPLAY}", is_term );
    print_help_msg ( "-h,-help", "", "This help message.", ((void*)0), is_term );
    print_help_msg ( "-dump-xresources", "", "Dump the current configuration in Xresources format and exit.", ((void*)0), is_term );
    print_help_msg ( "-e", "[string]", "Show a dialog displaying the passed message and exit.", ((void*)0), is_term );
    print_help_msg ( "-markup", "", "Enable pango markup where possible.", ((void*)0), is_term );
    print_help_msg ( "-normal-window", "", "In dmenu mode, behave as a normal window. (experimental)", ((void*)0), is_term );
    print_help_msg ( "-show", "[mode]", "Show the mode 'mode' and exit. The mode has to be enabled.", ((void*)0), is_term );
    print_help_msg ( "-no-lazy-grab", "", "Disable lazy grab that, when fail to grab keyboard, does not block but retry later.", ((void*)0), is_term );
    print_help_msg ( "-no-plugins", "", "Disable loading of external plugins.", ((void*)0), is_term );
    print_help_msg ( "-plugin-path", "", "Directory used to search for rofi plugins.", ((void*)0), is_term );
    print_help_msg ( "-dump-config", "", "Dump the current configuration in rasi format and exit.", ((void*)0), is_term );
    print_help_msg ( "-dump-theme", "", "Dump the current theme in rasi format and exit.", ((void*)0), is_term );
}
