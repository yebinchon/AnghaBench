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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,double,double) ; 
 int /*<<< orphan*/  MATHVARS2 ; 
 int /*<<< orphan*/  VarCyAdd ; 

__attribute__((used)) static void FUNC2(void)
{
  MATHVARS2;

  FUNC1(VarCyAdd, 0.5, 0.5);   FUNC0(1);
  FUNC1(VarCyAdd, 0.5, -0.4);  FUNC0(0.1);
  FUNC1(VarCyAdd, 0.5, -0.6);  FUNC0(-0.1);
  FUNC1(VarCyAdd, -0.5, -0.5); FUNC0(-1);
  FUNC1(VarCyAdd, -922337203685476.0, -922337203685476.0); EXPECT_OVERFLOW;
  FUNC1(VarCyAdd, -922337203685476.0, 922337203685476.0);  FUNC0(0);
  FUNC1(VarCyAdd, 922337203685476.0, -922337203685476.0);  FUNC0(0);
  FUNC1(VarCyAdd, 922337203685476.0, 922337203685476.0);   EXPECT_OVERFLOW;
}