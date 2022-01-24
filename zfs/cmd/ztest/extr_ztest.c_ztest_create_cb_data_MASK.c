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
struct TYPE_4__ {int /*<<< orphan*/  zcd_node; int /*<<< orphan*/  zcd_spa; int /*<<< orphan*/  zcd_txg; } ;
typedef  TYPE_1__ ztest_cb_data_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ztest_cb_data_t *
FUNC3(objset_t *os, uint64_t txg)
{
	ztest_cb_data_t *cb_data;

	cb_data = FUNC2(sizeof (ztest_cb_data_t), UMEM_NOFAIL);

	cb_data->zcd_txg = txg;
	cb_data->zcd_spa = FUNC0(os);
	FUNC1(&cb_data->zcd_node);

	return (cb_data);
}