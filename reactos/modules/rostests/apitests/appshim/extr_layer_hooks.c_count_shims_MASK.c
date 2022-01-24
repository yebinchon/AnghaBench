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
struct TYPE_4__ {TYPE_3__* hooks; } ;
typedef  TYPE_1__ expect_shim_data ;
struct TYPE_5__ {scalar_t__ Library; } ;
typedef  size_t DWORD ;

/* Variables and functions */
 size_t FUNC0 (TYPE_3__*) ; 

__attribute__((used)) static DWORD FUNC1(expect_shim_data* data)
{
    DWORD num;
    for (num = 0; num < FUNC0(data->hooks) && data->hooks[num].Library;)
    {
        ++num;
    }
    return num;
}