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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  VarI4FromCy ; 

__attribute__((used)) static void FUNC4(void)
{
  FUNC2(CY);

  FUNC0(VarI4FromCy,-1); FUNC3(-1);
  FUNC0(VarI4FromCy,0);  FUNC3(0);
  FUNC0(VarI4FromCy,1);  FUNC3(1);

  FUNC1(VarI4FromCy,-1,2147483647ul); EXPECT_OVERFLOW;
  FUNC1(VarI4FromCy,-1,2147483648ul); FUNC3(-2147483647 - 1);
  FUNC1(VarI4FromCy,0,2147483647ul);  FUNC3(2147483647ul);
  FUNC1(VarI4FromCy,0,2147483648ul);  EXPECT_OVERFLOW;

  FUNC0(VarI4FromCy,-1.5); FUNC3(-2);
  FUNC0(VarI4FromCy,-0.6); FUNC3(-1);
  FUNC0(VarI4FromCy,-0.5); FUNC3(0);
  FUNC0(VarI4FromCy,-0.4); FUNC3(0);
  FUNC0(VarI4FromCy,0.4);  FUNC3(0);
  FUNC0(VarI4FromCy,0.5);  FUNC3(0);
  FUNC0(VarI4FromCy,0.6);  FUNC3(1);
  FUNC0(VarI4FromCy,1.5);  FUNC3(2);
}