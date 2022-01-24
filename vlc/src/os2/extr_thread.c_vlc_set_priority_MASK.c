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
typedef  TYPE_1__* vlc_thread_t ;
struct TYPE_3__ {int /*<<< orphan*/  tid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  PRTYS_THREAD ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 

int FUNC3 (vlc_thread_t th, int priority)
{
    if (FUNC0(PRTYS_THREAD,
                       FUNC1(priority),
                       FUNC2(priority),
                       th->tid))
        return VLC_EGENERIC;
    return VLC_SUCCESS;
}