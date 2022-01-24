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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DECIMAL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  VarI8FromDec ; 

__attribute__((used)) static void FUNC4(void)
{
  FUNC2(DECIMAL);

  FUNC0(VarI8FromDec);

  FUNC1(VarI8FromDec,0,0x80,0,128); FUNC3(-128);
  FUNC1(VarI8FromDec,0,0x80,0,1);   FUNC3(-1);
  FUNC1(VarI8FromDec,0,0,0,0);      FUNC3(0);
  FUNC1(VarI8FromDec,0,0,0,1);      FUNC3(1);
  FUNC1(VarI8FromDec,0,0,0,127);    FUNC3(127);

  FUNC1(VarI8FromDec,2,0x80,0,12700); FUNC3(-127);
  FUNC1(VarI8FromDec,2,0,0,12700);    FUNC3(127);
}