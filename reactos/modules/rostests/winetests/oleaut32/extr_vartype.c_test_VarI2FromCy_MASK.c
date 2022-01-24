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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CY ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  VarI2FromCy ; 

__attribute__((used)) static void FUNC3(void)
{
  FUNC1(CY);

  FUNC0(VarI2FromCy,-32769); EXPECT_OVERFLOW;
  FUNC0(VarI2FromCy,-32768); FUNC2(32768);
  FUNC0(VarI2FromCy,-1);     FUNC2(-1);
  FUNC0(VarI2FromCy,0);      FUNC2(0);
  FUNC0(VarI2FromCy,1);      FUNC2(1);
  FUNC0(VarI2FromCy,32767);  FUNC2(32767);
  FUNC0(VarI2FromCy,32768);  EXPECT_OVERFLOW;

  /* Rounding */
  FUNC0(VarI2FromCy,-1.5); FUNC2(-2);
  FUNC0(VarI2FromCy,-0.6); FUNC2(-1);
  FUNC0(VarI2FromCy,-0.5); FUNC2(0);
  FUNC0(VarI2FromCy,-0.4); FUNC2(0);
  FUNC0(VarI2FromCy,0.4);  FUNC2(0);
  FUNC0(VarI2FromCy,0.5);  FUNC2(0);
  FUNC0(VarI2FromCy,0.6);  FUNC2(1);
  FUNC0(VarI2FromCy,1.5);  FUNC2(2);
}