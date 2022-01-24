#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mbcinfo; int /*<<< orphan*/  have_locale; } ;
typedef  TYPE_1__ thread_data_t ;
struct TYPE_5__ {int /*<<< orphan*/  mbcinfo; } ;
typedef  int /*<<< orphan*/  MSVCRT_pthreadmbcinfo ;

/* Variables and functions */
 TYPE_3__* MSVCRT_locale ; 
 TYPE_1__* FUNC0 () ; 

MSVCRT_pthreadmbcinfo FUNC1(void) {
    thread_data_t *data = FUNC0();

    if(!data || !data->have_locale)
        return MSVCRT_locale->mbcinfo;

    return data->mbcinfo;
}