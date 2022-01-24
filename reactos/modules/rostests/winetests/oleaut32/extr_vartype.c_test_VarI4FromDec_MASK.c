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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DECIMAL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  VarI4FromDec ; 

__attribute__((used)) static void FUNC5(void)
{
  FUNC3(DECIMAL);

  FUNC0(VarI4FromDec);

  FUNC1(VarI4FromDec,0,0x80,0,1); FUNC4(-1);
  FUNC1(VarI4FromDec,0,0,0,0);    FUNC4(0);
  FUNC1(VarI4FromDec,0,0,0,1);    FUNC4(1);

  FUNC2(VarI4FromDec,0,0x80,0,0,2147483649ul);  EXPECT_OVERFLOW;
  FUNC2(VarI4FromDec,0,0x80,0,0,2147483648ul);  FUNC4(-2147483647 - 1);
  FUNC2(VarI4FromDec,0,0,0,0,2147483647ul);     FUNC4(2147483647ul);
  FUNC2(VarI4FromDec,0,0,0,0,2147483648ul);     EXPECT_OVERFLOW;

  FUNC2(VarI4FromDec,2,0x80,0,50,100);       EXPECT_OVERFLOW;
  FUNC2(VarI4FromDec,2,0x80,0,50,0);         FUNC4(-2147483647 - 1);
  FUNC2(VarI4FromDec,2,0,0,49,4294967196ul); FUNC4(2147483647);
  FUNC2(VarI4FromDec,2,0,0,50,0);            EXPECT_OVERFLOW;
}