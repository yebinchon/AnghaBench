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
 int /*<<< orphan*/  DATE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  VarI2FromDate ; 

__attribute__((used)) static void FUNC3(void)
{
  FUNC1(DATE);

  FUNC0(VarI2FromDate, -32769.0); EXPECT_OVERFLOW;
  FUNC0(VarI2FromDate, -32768.0); FUNC2(-32768);
  FUNC0(VarI2FromDate, -1.0);   FUNC2(-1);
  FUNC0(VarI2FromDate, 0.0);    FUNC2(0);
  FUNC0(VarI2FromDate, 1.0);    FUNC2(1);
  FUNC0(VarI2FromDate, 32767.0);  FUNC2(32767);
  FUNC0(VarI2FromDate, 32768.0);  EXPECT_OVERFLOW;

  /* Rounding */
  FUNC0(VarI2FromDate, -1.5); FUNC2(-2);
  FUNC0(VarI2FromDate, -0.6); FUNC2(-1);
  FUNC0(VarI2FromDate, -0.5); FUNC2(0);
  FUNC0(VarI2FromDate, -0.4); FUNC2(0);
  FUNC0(VarI2FromDate, 0.4);  FUNC2(0);
  FUNC0(VarI2FromDate, 0.5);  FUNC2(0);
  FUNC0(VarI2FromDate, 0.6);  FUNC2(1);
  FUNC0(VarI2FromDate, 1.5);  FUNC2(2);
}