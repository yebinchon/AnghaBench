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
struct LZXstate {struct LZXstate* window; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct LZXstate*) ; 

void FUNC1(struct LZXstate *pState)
{
    if (pState)
    {
        if (pState->window)
            FUNC0(pState->window);
        FUNC0(pState);
    }
}