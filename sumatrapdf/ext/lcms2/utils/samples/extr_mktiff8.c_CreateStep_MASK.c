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
typedef  scalar_t__ cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;

/* Variables and functions */
 double FUNC0 (double) ; 
 scalar_t__* FUNC1 (int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 scalar_t__ FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 

__attribute__((used)) static
cmsToneCurve* FUNC5(void)
{
	cmsToneCurve* Gamma;
	cmsUInt16Number* Table;
	int i;
	double a;

	Table = FUNC1(4096, sizeof(cmsUInt16Number));
	if (Table == NULL) return NULL;

	for (i=0; i < 4096; i++) {

		a = (double) i * 255. / 4095.;

		a = FUNC0(a);

		Table[i] = (cmsUInt16Number) FUNC3(a * 257. + 0.5);
	}

	Gamma = FUNC2(0, 4096, Table);
	FUNC4(Table);

	return Gamma;
}