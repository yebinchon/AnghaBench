#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_3__ {int consttype; int /*<<< orphan*/  constvalue; int /*<<< orphan*/  constisnull; } ;
typedef  TYPE_1__ Const ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
#define  INT2OID 130 
#define  INT4OID 129 
#define  INT8OID 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int64
FUNC8(Const *cnst)
{
	FUNC0(!cnst->constisnull);

	switch (cnst->consttype)
	{
		case INT2OID:
			return (int64)(FUNC1(cnst->constvalue));
		case INT4OID:
			return (int64)(FUNC2(cnst->constvalue));
		case INT8OID:
			return FUNC3(cnst->constvalue);
	}

	FUNC4(ERROR,
			(FUNC5(ERRCODE_INVALID_PARAMETER_VALUE),
			 FUNC6("can only use const_datum_get_int with integer types")));

	FUNC7();
}