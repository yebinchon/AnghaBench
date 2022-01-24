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
#define  IRFPM_CEIL 139 
#define  IRFPM_COS 138 
#define  IRFPM_EXP 137 
#define  IRFPM_EXP2 136 
#define  IRFPM_FLOOR 135 
#define  IRFPM_LOG 134 
#define  IRFPM_LOG10 133 
#define  IRFPM_LOG2 132 
#define  IRFPM_SIN 131 
#define  IRFPM_SQRT 130 
#define  IRFPM_TAN 129 
#define  IRFPM_TRUNC 128 
 double FUNC0 (double) ; 
 double FUNC1 (double) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double) ; 
 double FUNC4 (double) ; 
 double FUNC5 (double) ; 
 double FUNC6 (double) ; 
 double FUNC7 (double) ; 
 double FUNC8 (double) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 double FUNC10 (double) ; 
 double FUNC11 (double) ; 
 double FUNC12 (double) ; 

double FUNC13(double x, int fpm)
{
  switch (fpm) {
  case IRFPM_FLOOR: return FUNC4(x);
  case IRFPM_CEIL: return FUNC2(x);
  case IRFPM_TRUNC: return FUNC6(x);
  case IRFPM_SQRT: return FUNC11(x);
  case IRFPM_EXP: return FUNC1(x);
  case IRFPM_EXP2: return FUNC3(x);
  case IRFPM_LOG: return FUNC7(x);
  case IRFPM_LOG2: return FUNC5(x);
  case IRFPM_LOG10: return FUNC8(x);
  case IRFPM_SIN: return FUNC10(x);
  case IRFPM_COS: return FUNC0(x);
  case IRFPM_TAN: return FUNC12(x);
  default: FUNC9(0);
  }
  return 0;
}