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
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int,int,double) ; 
 int /*<<< orphan*/  DosDateTimeToVariantTime ; 

__attribute__((used)) static void FUNC2(void)
{
  FUNC0(DosDateTimeToVariantTime);

  /* Date */
  FUNC1(1,1,1980,0,0,0,1,29221.0); /* 1/1/1980 */
  FUNC1(31,12,2099,0,0,0,1,73050.0); /* 31/12/2099 */
  /* Dates are limited to the dos date max of 31/12/2099 */
  FUNC1(31,12,2100,0,0,0,0,0.0); /* 31/12/2100 */
  /* Days and months of 0 cause date to roll back 1 day or month */
  FUNC1(0,1,1980,0,0,0,1,29220.0); /* 0 Day => 31/12/1979 */
  FUNC1(1,0,1980,0,0,0,1,29190.0); /* 0 Mth =>  1/12/1979 */
  FUNC1(0,0,1980,0,0,0,1,29189.0); /* 0 D/M => 30/11/1979 */
  /* Days > days in the month cause date to roll forward 1 month */
  FUNC1(29,2,1981,0,0,0,1,29646.0); /* 29/2/1981 -> 3/1/1980 */
  FUNC1(30,2,1981,0,0,0,1,29647.0); /* 30/2/1981 -> 4/1/1980 */
  /* Takes leap years into account when rolling forward */
  FUNC1(29,2,1980,0,0,0,1,29280.0); /* 2/29/1980 */
  /* Months > 12 cause an error */
  FUNC1(2,13,1980,0,0,0,0,0.0);

  /* Time */
  FUNC1(1,1,1980,0,0,29,1,29221.00032407407); /* 1/1/1980 12:00:28 AM */
  FUNC1(1,1,1980,0,0,31,1,29221.00034722222); /* 1/1/1980 12:00:30 AM */
  FUNC1(1,1,1980,0,59,0,1,29221.04097222222); /* 1/1/1980 12:59:00 AM */
  FUNC1(1,1,1980,0,60,0,0,0.0);               /* Invalid minutes */
  FUNC1(1,1,1980,0,0,60,0,0.0);               /* Invalid seconds */
  FUNC1(1,1,1980,23,0,0,1,29221.95833333333); /* 1/1/1980 11:00:00 PM */
  FUNC1(1,1,1980,24,0,0,0,0.0);               /* Invalid hours */

  FUNC1(1,1,1980,0,0,1,1,29221.0);
  FUNC1(2,1,1980,0,0,0,1,29222.0);
  FUNC1(2,1,1980,0,0,0,1,29222.0);
  FUNC1(31,12,1990,0,0,0,1,33238.0);
  FUNC1(31,12,90,0,0,0,1,40543.0);
  FUNC1(30,12,1899,0,0,0,1,46751.0);
  FUNC1(1,1,100,0,0,0,1,43831.0);
  FUNC1(31,12,9999,0,0,0,1,59901.0);
  FUNC1(1,1,10000,0,0,0,1,59902.0);
  FUNC1(1,1,-10000,0,0,0,1,48214.0);

  FUNC1(30,12,1899,0,0,0,1,46751.0);
  FUNC1(30,12,1899,0,0,1,1,46751.0);

  FUNC1(1,1,1980,18,1,16,1,29221.75087962963);
  FUNC1(1,300,1980,18,1,16,1,29556.75087962963);
  FUNC1(300,1,1980,18,1,16,1,29232.75087962963);
  FUNC1(0,1,1980,42,1,16,1,29220.4175462963);
  FUNC1(1,1,1980,17,61,16,0,0.0);
  FUNC1(1,1,1980,18,0,76,1,29221.75013888889);
  FUNC1(1,-300,1980,18,1,16,1,29312.75087962963);
  FUNC1(-300,1,1980,18,1,16,1,29240.75087962963);
  FUNC1(3,1,1980,-30,1,16,1,29223.08421296296);
  FUNC1(1,1,1980,20,-119,16,1,29221.83976851852);
  FUNC1(1,1,1980,18,3,-104,1,29221.75236111111);
  FUNC1(1,12001,-1020,18,1,16,1,55519.75087962963);
  FUNC1(1,-23,1982,18,1,16,1,30195.75087962963);
  FUNC1(-59,3,1980,18,1,16,1,29285.75087962963);
  FUNC1(1,1,0,0,0,0,1,54058.0);
  FUNC1(0,0,1980,0,0,0,1,29189.0);
  FUNC1(0,1,1980,0,0,0,1,29220.0);
  FUNC1(-1,1,1980,18,1,16,1,29251.75087962963);
  FUNC1(1,1,-1,18,1,16,1,53693.75087962963);
  FUNC1(1,-1,1980,18,1,16,0,0);
}