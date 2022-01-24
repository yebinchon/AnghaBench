#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/ ** ChannelMap; } ;
typedef  TYPE_1__ MIDIMAPDATA ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,unsigned int*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * midiOutPorts ; 
 unsigned int numMidiOutPorts ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static BOOL	FUNC3(MIDIMAPDATA* mom, const WCHAR* port)
{
    unsigned i, dev = 0;

    if (port != NULL && !FUNC1(port, &dev))
    {
	FUNC0("Registry glitch: couldn't find midi out (%s)\n", FUNC2(port));
	dev = 0;
    }

    /* this is necessary when no midi out ports are present */
    if (dev >= numMidiOutPorts)
	return FALSE;
    /* sets default */
    for (i = 0; i < 16; i++) mom->ChannelMap[i] = &midiOutPorts[dev];

    return TRUE;
}