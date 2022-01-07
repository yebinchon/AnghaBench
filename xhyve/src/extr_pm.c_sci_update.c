
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PM1_GBL_EN ;
 int PM1_GBL_STS ;
 int PM1_PWRBTN_EN ;
 int PM1_PWRBTN_STS ;
 int PM1_RTC_EN ;
 int PM1_RTC_STS ;
 int PM1_SLPBTN_EN ;
 int PM1_SLPBTN_STS ;
 int PM1_TMR_EN ;
 int PM1_TMR_STS ;
 int pm1_enable ;
 int pm1_status ;
 int sci_assert () ;
 int sci_deassert () ;

__attribute__((used)) static void
sci_update(void)
{
 int need_sci;


 need_sci = 0;
 if ((pm1_enable & PM1_TMR_EN) && (pm1_status & PM1_TMR_STS))
  need_sci = 1;
 if ((pm1_enable & PM1_GBL_EN) && (pm1_status & PM1_GBL_STS))
  need_sci = 1;
 if ((pm1_enable & PM1_PWRBTN_EN) && (pm1_status & PM1_PWRBTN_STS))
  need_sci = 1;
 if ((pm1_enable & PM1_SLPBTN_EN) && (pm1_status & PM1_SLPBTN_STS))
  need_sci = 1;
 if ((pm1_enable & PM1_RTC_EN) && (pm1_status & PM1_RTC_STS))
  need_sci = 1;
 if (need_sci)
  sci_assert();
 else
  sci_deassert();
}
