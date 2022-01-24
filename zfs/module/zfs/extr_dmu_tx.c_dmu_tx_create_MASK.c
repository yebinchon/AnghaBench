#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* os_dsl_dataset; } ;
typedef  TYPE_2__ objset_t ;
struct TYPE_9__ {TYPE_2__* tx_objset; } ;
typedef  TYPE_3__ dmu_tx_t ;
struct TYPE_7__ {int /*<<< orphan*/  ds_dir; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 

dmu_tx_t *
FUNC1(objset_t *os)
{
	dmu_tx_t *tx = FUNC0(os->os_dsl_dataset->ds_dir);
	tx->tx_objset = os;
	return (tx);
}