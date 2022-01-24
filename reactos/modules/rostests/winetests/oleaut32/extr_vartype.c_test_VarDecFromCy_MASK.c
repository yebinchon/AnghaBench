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
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  VarDecFromCy ; 

__attribute__((used)) static void FUNC3(void)
{
  FUNC1(CY);

  FUNC0(VarDecFromCy, -1);  FUNC2(4,0x80,0,10000);
  FUNC0(VarDecFromCy, 0);   FUNC2(4,0,0,0);
  FUNC0(VarDecFromCy, 1);   FUNC2(4,0,0,10000);
  FUNC0(VarDecFromCy, 0.5); FUNC2(4,0,0,5000);
}