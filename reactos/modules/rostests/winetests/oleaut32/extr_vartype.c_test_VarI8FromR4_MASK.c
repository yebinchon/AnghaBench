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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,float) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FLOAT ; 
 int /*<<< orphan*/  VarI8FromR4 ; 

__attribute__((used)) static void FUNC3(void)
{
  FUNC1(FLOAT);

  FUNC0(VarI8FromR4, -128.0f); FUNC2(-128);
  FUNC0(VarI8FromR4, -1.0f);   FUNC2(-1);
  FUNC0(VarI8FromR4, 0.0f);    FUNC2(0);
  FUNC0(VarI8FromR4, 1.0f);    FUNC2(1);
  FUNC0(VarI8FromR4, 127.0f);  FUNC2(127);

  FUNC0(VarI8FromR4, -1.5f); FUNC2(-2);
  FUNC0(VarI8FromR4, -0.6f); FUNC2(-1);
  FUNC0(VarI8FromR4, -0.5f); FUNC2(0);
  FUNC0(VarI8FromR4, -0.4f); FUNC2(0);
  FUNC0(VarI8FromR4, 0.4f);  FUNC2(0);
  FUNC0(VarI8FromR4, 0.5f);  FUNC2(0);
  FUNC0(VarI8FromR4, 0.6f);  FUNC2(1);
  FUNC0(VarI8FromR4, 1.5f);  FUNC2(2);
}