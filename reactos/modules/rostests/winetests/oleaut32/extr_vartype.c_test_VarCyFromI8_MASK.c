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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  LONG64 ; 
 int /*<<< orphan*/  VarCyFromI8 ; 

__attribute__((used)) static void FUNC5(void)
{
  FUNC2(LONG64);

  FUNC1(VarCyFromI8, -214749, 2728163227ul);   EXPECT_OVERFLOW;
  FUNC1(VarCyFromI8, -214749, 2728163228ul);   FUNC4(2147483648ul,15808);
  FUNC0(VarCyFromI8, -1); FUNC3(-1);
  FUNC0(VarCyFromI8, 0);  FUNC3(0);
  FUNC0(VarCyFromI8, 1);  FUNC3(1);
  FUNC1(VarCyFromI8, 214748, 1566804068); FUNC4(2147483647ul, 4294951488ul);
  FUNC1(VarCyFromI8, 214748, 1566804069); EXPECT_OVERFLOW;
}