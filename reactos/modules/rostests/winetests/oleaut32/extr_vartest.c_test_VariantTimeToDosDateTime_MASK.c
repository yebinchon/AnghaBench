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
 int /*<<< orphan*/  FUNC1 (double,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  VariantTimeToDosDateTime ; 

__attribute__((used)) static void FUNC2(void)
{
  FUNC0(VariantTimeToDosDateTime);

  /* Date */
  FUNC1(29221.0,1,1,1,1980,0,0,0);   /* 1/1/1980 */
  FUNC1(73050.0,1,31,12,2099,0,0,0); /* 31/12/2099 */
  FUNC1(29220.0,0,0,0,0,0,0,0);      /* 31/12/1979 - out of range */
  FUNC1(73415.0,0,0,0,0,0,0,0);      /* 31/12/2100 - out of range */

  /* Time */
  FUNC1(29221.00032407407,1,1,1,1980,0,0,29); /* 1/1/1980 12:00:28 AM */
  FUNC1(29221.00034722222,1,1,1,1980,0,0,31); /* 1/1/1980 12:00:30 AM */
  FUNC1(29221.04097222222,1,1,1,1980,0,59,0); /* 1/1/1980 12:59:00 AM */
  FUNC1(29221.95833333333,1,1,1,1980,23,0,0); /* 1/1/1980 11:00:00 PM */
}