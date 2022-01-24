#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__* vs_bytes; scalar_t__* vs_ops; } ;
typedef  TYPE_1__ vdev_stat_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC2(vdev_stat_t *oldvs, vdev_stat_t *newvs,
    vdev_stat_t *calcvs)
{
	int i;

	FUNC1(calcvs, newvs, sizeof (*calcvs));
	for (i = 0; i < FUNC0(calcvs->vs_ops); i++)
		calcvs->vs_ops[i] = (newvs->vs_ops[i] - oldvs->vs_ops[i]);

	for (i = 0; i < FUNC0(calcvs->vs_bytes); i++)
		calcvs->vs_bytes[i] = (newvs->vs_bytes[i] - oldvs->vs_bytes[i]);
}