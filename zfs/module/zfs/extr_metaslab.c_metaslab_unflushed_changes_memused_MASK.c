#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_6__ {TYPE_3__* ms_unflushed_allocs; TYPE_3__* ms_unflushed_frees; } ;
typedef  TYPE_2__ metaslab_t ;
struct TYPE_5__ {int bt_elem_size; } ;
struct TYPE_7__ {TYPE_1__ rt_root; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*) ; 

uint64_t
FUNC1(metaslab_t *ms)
{
	return ((FUNC0(ms->ms_unflushed_allocs) +
	    FUNC0(ms->ms_unflushed_frees)) *
	    ms->ms_unflushed_allocs->rt_root.bt_elem_size);
}