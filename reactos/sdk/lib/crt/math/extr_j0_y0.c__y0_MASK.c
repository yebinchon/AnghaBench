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

/* Variables and functions */
 int /*<<< orphan*/  EDOM ; 
 int _FPCLASS_ND ; 
 scalar_t__ _FPCLASS_NINF ; 
 int _FPCLASS_NN ; 
 int _FPCLASS_NZ ; 
 double FUNC0 (double) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 scalar_t__ FUNC3 (double) ; 
 double FUNC4 (int) ; 

double FUNC5(double num)
{
  double retval;
  int fpclass = FUNC3(num);

  if (!FUNC2(num) || fpclass == _FPCLASS_NN ||
      fpclass == _FPCLASS_ND || fpclass == _FPCLASS_NZ)
    *FUNC1() = EDOM;

  retval  = FUNC0(num);
  if (FUNC3(retval) == _FPCLASS_NINF)
  {
    *FUNC1() = EDOM;
    retval = FUNC4(-1);
  }
  return retval;
}