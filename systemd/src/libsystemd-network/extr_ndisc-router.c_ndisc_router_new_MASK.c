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
struct TYPE_4__ {size_t raw_size; int n_ref; } ;
typedef  TYPE_1__ sd_ndisc_router ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 

sd_ndisc_router *FUNC2(size_t raw_size) {
        sd_ndisc_router *rt;

        rt = FUNC1(FUNC0(sizeof(sd_ndisc_router)) + raw_size);
        if (!rt)
                return NULL;

        rt->raw_size = raw_size;
        rt->n_ref = 1;

        return rt;
}