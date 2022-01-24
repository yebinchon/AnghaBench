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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DECIMAL ; 
 int /*<<< orphan*/  FUNC3 (float) ; 
 int /*<<< orphan*/  VarR4FromDec ; 

__attribute__((used)) static void FUNC4(void)
{
  FUNC2(DECIMAL);

  FUNC0(VarR4FromDec);

  FUNC1(VarR4FromDec,0,0x80,0,32768); FUNC3(-32768.0f);
  FUNC1(VarR4FromDec,0,0x80,0,1);     FUNC3(-1.0f);
  FUNC1(VarR4FromDec,0,0,0,0);        FUNC3(0.0f);
  FUNC1(VarR4FromDec,0,0,0,1);        FUNC3(1.0f);
  FUNC1(VarR4FromDec,0,0,0,32767);    FUNC3(32767.0f);

  FUNC1(VarR4FromDec,2,0x80,0,3276800); FUNC3(-32768.0f);
  FUNC1(VarR4FromDec,2,0,0,3276700);    FUNC3(32767.0f);
  FUNC1(VarR4FromDec,10,0,0,3276700);   FUNC3(0.00032767f);

  FUNC1(VarR4FromDec,0,0,1,0);        FUNC3(18446744073709551616.0f);
}