#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* bitmap; } ;
typedef  TYPE_1__* PEXT2_GENERIC_BITMAP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(PEXT2_GENERIC_BITMAP bitmap)
{
    if (!bitmap)
        return;

    if (bitmap->bitmap)
    {
        FUNC0(FUNC1(), 0, bitmap->bitmap);
        bitmap->bitmap = 0;
    }

    FUNC0(FUNC1(), 0, bitmap);
}