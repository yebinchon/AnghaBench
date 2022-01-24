#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* nva_ops; } ;
typedef  TYPE_2__ nv_alloc_t ;
struct TYPE_5__ {int /*<<< orphan*/  (* nv_ao_reset ) (TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

void
FUNC1(nv_alloc_t *nva)
{
	if (nva->nva_ops->nv_ao_reset != NULL)
		nva->nva_ops->nv_ao_reset(nva);
}