#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (char const) ; 
 TYPE_1__* midiOutPorts ; 
 unsigned int numMidiOutPorts ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL	FUNC4(const WCHAR* name, unsigned* dev)
{
    for (*dev = 0; *dev < numMidiOutPorts; (*dev)++)
    {
	FUNC0("%s\n", FUNC3(midiOutPorts[*dev].name));
	if (FUNC2(midiOutPorts[*dev].name, name) == 0)
	    return TRUE;
    }
    /* try the form #nnn */
    if (*name == '#' && FUNC1(name[1]))
    {
        const WCHAR*  ptr = name + 1;
        *dev = 0;
        do
        {
            *dev = *dev * 10 + *ptr - '0';
        } while (FUNC1(*++ptr));
	if (*dev < numMidiOutPorts)
	    return TRUE;
    }
    return FALSE;
}