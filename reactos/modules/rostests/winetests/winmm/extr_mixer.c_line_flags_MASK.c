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
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int MIXERLINE_LINEF_ACTIVE ; 
 int MIXERLINE_LINEF_DISCONNECTED ; 
 int MIXERLINE_LINEF_SOURCE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 

__attribute__((used)) static const char * FUNC1(DWORD fdwLine)
{
    static char flags[100];
    BOOL first=TRUE;
    flags[0]=0;
    if (fdwLine&MIXERLINE_LINEF_ACTIVE) {
        FUNC0(flags,"MIXERLINE_LINEF_ACTIVE");
        first=FALSE;
    }
    if (fdwLine&MIXERLINE_LINEF_DISCONNECTED) {
        if (!first)
            FUNC0(flags, "|");

        FUNC0(flags,"MIXERLINE_LINEF_DISCONNECTED");
        first=FALSE;
    }

    if (fdwLine&MIXERLINE_LINEF_SOURCE) {
        if (!first)
            FUNC0(flags, "|");

        FUNC0(flags,"MIXERLINE_LINEF_SOURCE");
    }

    return flags;
}