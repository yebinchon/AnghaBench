#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*,int) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC3 ( void )
{
    int is_term = FUNC1 ( FUNC0 ( stdout ) );
    FUNC2 ( "-mesg", "[string]", "Print a small user message under the prompt (uses pango markup)", NULL, is_term );
    FUNC2 ( "-p", "[string]", "Prompt to display left of entry field", NULL, is_term );
    FUNC2 ( "-selected-row", "[integer]", "Select row", NULL, is_term );
    FUNC2 ( "-format", "[string]", "Output format string", "s", is_term );
    FUNC2 ( "-u", "[list]", "List of row indexes to mark urgent", NULL, is_term );
    FUNC2 ( "-a", "[list]", "List of row indexes to mark active", NULL, is_term );
    FUNC2 ( "-l", "[integer] ", "Number of rows to display", NULL, is_term );
    FUNC2 ( "-window-title", "[string] ", "Set the dmenu window title", NULL, is_term );
    FUNC2 ( "-i", "", "Set filter to be case insensitive", NULL, is_term );
    FUNC2 ( "-only-match", "", "Force selection or custom entry", NULL, is_term );
    FUNC2 ( "-no-custom", "", "Don't accept custom entry", NULL, is_term );
    FUNC2 ( "-select", "[string]", "Select the first row that matches", NULL, is_term );
    FUNC2 ( "-password", "", "Do not show what the user inputs. Show '*' instead.", NULL, is_term );
    FUNC2 ( "-markup-rows", "", "Allow and render pango markup as input data.", NULL, is_term );
    FUNC2 ( "-sep", "[char]", "Element separator.", "'\\n'", is_term );
    FUNC2 ( "-input", "[filename]", "Read input from file instead from standard input.", NULL, is_term );
    FUNC2 ( "-sync", "", "Force dmenu to first read all input data, then show dialog.", NULL, is_term );
    FUNC2 ( "-async-pre-read", "[number]", "Read several entries blocking before switching to async mode", "25", is_term );
    FUNC2 ( "-w", "windowid", "Position over window with X11 windowid.", NULL, is_term );
}