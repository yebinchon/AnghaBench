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
typedef  int /*<<< orphan*/  LONG64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  EXPECT_OVERFLOW ; 
 int /*<<< orphan*/  FUNC2 (double,int) ; 
 int /*<<< orphan*/  MATHVARS1 ; 

__attribute__((used)) static void FUNC3(void)
{
  MATHVARS1;
  LONG64 right;

  FUNC2(534443.0, 0); FUNC0(0);
  FUNC2(0.5, 1);      FUNC0(0.5);
  FUNC2(0.5, 2);      FUNC0(1);
  FUNC2(922337203685476.0, 1); FUNC1(2147483647ul,4294951488ul);
  FUNC2(922337203685476.0, 2); EXPECT_OVERFLOW;
}