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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMU_OBJECT_END ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  ZVOL_OBJ ; 
 int /*<<< orphan*/  ZVOL_ZAP_OBJ ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(uint64_t volsize, objset_t *os)
{
	dmu_tx_t *tx;
	int error;
	uint64_t txg;

	tx = FUNC6(os);
	FUNC8(tx, ZVOL_ZAP_OBJ, TRUE, NULL);
	FUNC9(tx);
	error = FUNC4(tx, TXG_WAIT);
	if (error) {
		FUNC3(tx);
		return (FUNC0(error));
	}
	txg = FUNC7(tx);

	error = FUNC11(os, ZVOL_ZAP_OBJ, "size", 8, 1,
	    &volsize, tx);
	FUNC5(tx);

	FUNC10(FUNC2(os), txg);

	if (error == 0)
		error = FUNC1(os,
		    ZVOL_OBJ, volsize, DMU_OBJECT_END);

	return (error);
}