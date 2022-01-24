#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;

/* Variables and functions */
 int DB_RF_MUST_SUCCEED ; 
 int DB_RF_NOPREFETCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

void
FUNC1(dmu_buf_t *db_fake, dmu_tx_t *tx)
{
	FUNC0(db_fake,
	    DB_RF_MUST_SUCCEED | DB_RF_NOPREFETCH, tx);
}