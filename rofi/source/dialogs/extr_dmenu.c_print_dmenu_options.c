
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fileno (int ) ;
 int isatty (int ) ;
 int print_help_msg (char*,char*,char*,char*,int) ;
 int stdout ;

void print_dmenu_options ( void )
{
    int is_term = isatty ( fileno ( stdout ) );
    print_help_msg ( "-mesg", "[string]", "Print a small user message under the prompt (uses pango markup)", ((void*)0), is_term );
    print_help_msg ( "-p", "[string]", "Prompt to display left of entry field", ((void*)0), is_term );
    print_help_msg ( "-selected-row", "[integer]", "Select row", ((void*)0), is_term );
    print_help_msg ( "-format", "[string]", "Output format string", "s", is_term );
    print_help_msg ( "-u", "[list]", "List of row indexes to mark urgent", ((void*)0), is_term );
    print_help_msg ( "-a", "[list]", "List of row indexes to mark active", ((void*)0), is_term );
    print_help_msg ( "-l", "[integer] ", "Number of rows to display", ((void*)0), is_term );
    print_help_msg ( "-window-title", "[string] ", "Set the dmenu window title", ((void*)0), is_term );
    print_help_msg ( "-i", "", "Set filter to be case insensitive", ((void*)0), is_term );
    print_help_msg ( "-only-match", "", "Force selection or custom entry", ((void*)0), is_term );
    print_help_msg ( "-no-custom", "", "Don't accept custom entry", ((void*)0), is_term );
    print_help_msg ( "-select", "[string]", "Select the first row that matches", ((void*)0), is_term );
    print_help_msg ( "-password", "", "Do not show what the user inputs. Show '*' instead.", ((void*)0), is_term );
    print_help_msg ( "-markup-rows", "", "Allow and render pango markup as input data.", ((void*)0), is_term );
    print_help_msg ( "-sep", "[char]", "Element separator.", "'\\n'", is_term );
    print_help_msg ( "-input", "[filename]", "Read input from file instead from standard input.", ((void*)0), is_term );
    print_help_msg ( "-sync", "", "Force dmenu to first read all input data, then show dialog.", ((void*)0), is_term );
    print_help_msg ( "-async-pre-read", "[number]", "Read several entries blocking before switching to async mode", "25", is_term );
    print_help_msg ( "-w", "windowid", "Position over window with X11 windowid.", ((void*)0), is_term );
}
