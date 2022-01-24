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
typedef  int /*<<< orphan*/  VOID ;
typedef  int ULONG ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int APIC_DIVISOR ; 
 int /*<<< orphan*/  APIC_ICRT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  APIC_LVTT ; 
 int APIC_LVT_PERIODIC ; 
 int /*<<< orphan*/  APIC_TDCR ; 
 int APIC_TDCR_1 ; 
 int APIC_TDCR_16 ; 
 int APIC_TIMER_BASE_DIV ; 
 int /*<<< orphan*/  APIC_VER ; 
 int FUNC3 (int) ; 
 int LOCAL_TIMER_VECTOR ; 
 int FUNC4 (int) ; 

VOID FUNC5(ULONG ClockTicks)
{
   ULONG tmp;

   tmp = FUNC3(FUNC0(APIC_VER));
   if (!FUNC2(tmp))
   {
      tmp = FUNC4(APIC_TIMER_BASE_DIV) | APIC_LVT_PERIODIC | LOCAL_TIMER_VECTOR;
   }
   else
   {
      /* Periodic timer */
      tmp = APIC_LVT_PERIODIC | LOCAL_TIMER_VECTOR;
   }
   FUNC1(APIC_LVTT, tmp);

   tmp = FUNC0(APIC_TDCR);
   tmp &= ~(APIC_TDCR_1 | APIC_TIMER_BASE_DIV);
   tmp |= APIC_TDCR_16;
   FUNC1(APIC_TDCR, tmp);
   FUNC1(APIC_ICRT, ClockTicks / APIC_DIVISOR);
}