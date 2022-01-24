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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2(void)
{
    FUNC0();
    FUNC1("LOADER: Syntax:\n");
    FUNC1("LOADER:         loader [switches] [executable/object file path]\n");
    FUNC1("LOADER: Switches:\n");
    FUNC1("LOADER:         -trans      (-t):   translate from exe to sym\n");
    FUNC1("LOADER:         -load       (-l):   load symbols\n");
    FUNC1("LOADER:         -unload     (-u):   unload symbols\n");
    FUNC1("LOADER:         -reload     (-r):   reload some/all symbols\n");
    FUNC1("LOADER:         -verbose    (-v):   be a bit more verbose\n");
    FUNC1("LOADER:         -install    (-i):   install pICE debugger\n");
    FUNC1("LOADER:         -uninstall  (-x):   uninstall pICE debugger\n");
    FUNC1("LOADER:         -break      (-b):   break into debugger\n");
    FUNC1("LOADER:         -serial     (-ser): start serial line terminal\n");
}