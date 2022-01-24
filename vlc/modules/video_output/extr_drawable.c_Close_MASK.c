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
struct TYPE_3__ {int /*<<< orphan*/  sys; } ;
typedef  TYPE_1__ vout_window_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (uintptr_t*) ; 
 int /*<<< orphan*/  serializer ; 
 uintptr_t* used ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 (vout_window_t *wnd)
{
    uintptr_t val = (uintptr_t)wnd->sys;
    size_t n = 0;

    /* Remove this drawable from the list of busy ones */
    FUNC2 (&serializer);
    FUNC0 (used != NULL);
    while (used[n] != val)
    {
        FUNC0 (used[n]);
        n++;
    }
    do
        used[n] = used[n + 1];
    while (used[++n] != 0);

    if (n == 0)
    {
         FUNC1 (used);
         used = NULL;
    }
    FUNC3 (&serializer);
}