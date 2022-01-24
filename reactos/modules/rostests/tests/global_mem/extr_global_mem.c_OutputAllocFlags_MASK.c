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
typedef  int UINT ;

/* Variables and functions */
 int GMEM_MOVEABLE ; 
 int GMEM_ZEROINIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

void FUNC1(UINT pFlags)
{
    if (pFlags & GMEM_MOVEABLE)
    {
        FUNC0("Movable Memory");
    }
    else
    {
        FUNC0("Fixed Memory");
    }

    if (pFlags & GMEM_ZEROINIT)
    {
        FUNC0("Zero Initialized Memory");
    }
}