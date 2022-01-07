
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;


 int APICRead (int ) ;
 int APICWrite (int ,int) ;
 int APIC_DIVISOR ;
 int APIC_ICRT ;
 int APIC_INTEGRATED (int) ;
 int APIC_LVTT ;
 int APIC_LVT_PERIODIC ;
 int APIC_TDCR ;
 int APIC_TDCR_1 ;
 int APIC_TDCR_16 ;
 int APIC_TIMER_BASE_DIV ;
 int APIC_VER ;
 int GET_APIC_VERSION (int) ;
 int LOCAL_TIMER_VECTOR ;
 int SET_APIC_TIMER_BASE (int) ;

VOID APICSetupLVTT(ULONG ClockTicks)
{
   ULONG tmp;

   tmp = GET_APIC_VERSION(APICRead(APIC_VER));
   if (!APIC_INTEGRATED(tmp))
   {
      tmp = SET_APIC_TIMER_BASE(APIC_TIMER_BASE_DIV) | APIC_LVT_PERIODIC | LOCAL_TIMER_VECTOR;
   }
   else
   {

      tmp = APIC_LVT_PERIODIC | LOCAL_TIMER_VECTOR;
   }
   APICWrite(APIC_LVTT, tmp);

   tmp = APICRead(APIC_TDCR);
   tmp &= ~(APIC_TDCR_1 | APIC_TIMER_BASE_DIV);
   tmp |= APIC_TDCR_16;
   APICWrite(APIC_TDCR, tmp);
   APICWrite(APIC_ICRT, ClockTicks / APIC_DIVISOR);
}
