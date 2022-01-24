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
typedef  TYPE_1__* vlc_thread_t ;
struct TYPE_4__ {int /*<<< orphan*/  id; void* data; } ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WAIT_ABANDONED_0 ; 
 scalar_t__ WAIT_FAILED ; 
 scalar_t__ WAIT_IO_COMPLETION ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5 (vlc_thread_t th, void **result)
{
    DWORD ret;

    do
    {
        FUNC3 ();
        ret = FUNC1(th->id, INFINITE, TRUE);
        FUNC2(ret != WAIT_ABANDONED_0);
    }
    while (ret == WAIT_IO_COMPLETION || ret == WAIT_FAILED);

    if (result != NULL)
        *result = th->data;
    FUNC0 (th->id);
    FUNC4(th);
}