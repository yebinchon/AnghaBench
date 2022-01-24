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
typedef  int /*<<< orphan*/  PUCHAR ;

/* Variables and functions */
 scalar_t__ LP_C ; 
 int LP_DELAY ; 
 int LP_PINITP ; 
 int LP_PSELECP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(void)
/*
 * FUNCTION: Resets the device attached to the parallel port
 */
{
   int i;

   FUNC0((PUCHAR)LP_C,0);
   for (i=0;i<LP_DELAY;i++);
   FUNC0((PUCHAR)LP_C,LP_PSELECP | LP_PINITP);
}