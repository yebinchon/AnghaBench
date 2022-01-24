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
struct TYPE_3__ {double L; int /*<<< orphan*/  b; int /*<<< orphan*/  a; } ;
typedef  TYPE_1__ cmsCIELab ;
typedef  int WORD ;
typedef  int /*<<< orphan*/  LPVOID ;

/* Variables and functions */
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (double) ; 

__attribute__((used)) static
int FUNC3(register WORD In[], register WORD Out[], register LPVOID Cargo)
{	
    cmsCIELab Lab;


    FUNC0(&Lab, In);

	if (FUNC1(Lab.a) < 3 && FUNC1(Lab.b) < 3) {
		
		double L_01 = Lab.L / 100.0;
	    WORD K;

		if (L_01 > 1) L_01 = 1;
		K = (WORD) FUNC2(L_01* 65535.0 + 0.5);

		Out[0] = Out[1] = Out[2] = K; 
	}
	else {
		Out[0] = 0xFFFF; Out[1] = 0; Out[2] = 0; 
	}

	return TRUE;
}