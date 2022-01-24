#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_5__ {scalar_t__ dd_crypto_obj; TYPE_1__* dd_pool; } ;
typedef  TYPE_2__ dsl_dir_t ;
struct TYPE_4__ {int /*<<< orphan*/  dp_meta_objset; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSL_CRYPTO_KEY_ROOT_DDOBJ ; 
 int /*<<< orphan*/  ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(dsl_dir_t *dd, uint64_t *rddobj)
{
	if (dd->dd_crypto_obj == 0)
		return (FUNC0(ENOENT));

	return (FUNC1(dd->dd_pool->dp_meta_objset, dd->dd_crypto_obj,
	    DSL_CRYPTO_KEY_ROOT_DDOBJ, 8, 1, rddobj));
}