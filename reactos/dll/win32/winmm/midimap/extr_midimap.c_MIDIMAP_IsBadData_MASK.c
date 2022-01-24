#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* self; } ;
typedef  TYPE_1__ MIDIMAPDATA ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static	BOOL	FUNC2(MIDIMAPDATA* mm)
{
    if (!FUNC0(mm, sizeof(MIDIMAPDATA)) && mm->self == mm)
	return FALSE;
    FUNC1("Bad midimap data (%p)\n", mm);
    return TRUE;
}