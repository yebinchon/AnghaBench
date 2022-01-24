#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_9__ {int /*<<< orphan*/  dd_crypto_obj; } ;
typedef  TYPE_2__ dsl_dir_t ;
struct TYPE_10__ {TYPE_1__* tx_pool; } ;
typedef  TYPE_3__ dmu_tx_t ;
struct TYPE_8__ {int /*<<< orphan*/ * dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DSL_CRYPTO_KEY_REFCOUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_3__*) ; 

uint64_t
FUNC4(dsl_dir_t *origindd, dmu_tx_t *tx)
{
	objset_t *mos = tx->tx_pool->dp_meta_objset;

	FUNC0(FUNC2(tx));

	FUNC1(FUNC3(mos, origindd->dd_crypto_obj,
	    DSL_CRYPTO_KEY_REFCOUNT, 1, tx));

	return (origindd->dd_crypto_obj);
}