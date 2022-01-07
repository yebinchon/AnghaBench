
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int RTC_HMEM_LSB ;
 int RTC_HMEM_MSB ;
 int RTC_HMEM_SB ;
 int RTC_LMEM_LSB ;
 int RTC_LMEM_MSB ;
 int assert (int) ;
 size_t m_16MB ;
 size_t m_64KB ;
 int rtc_time (int) ;
 size_t xh_vm_get_highmem_size () ;
 size_t xh_vm_get_lowmem_size () ;
 int xh_vm_rtc_settime (int ) ;
 int xh_vm_rtc_write (int ,int ) ;

void
rtc_init(int use_localtime)
{
 size_t himem;
 size_t lomem;
 int err;
 lomem = (xh_vm_get_lowmem_size() - m_16MB) / m_64KB;
 err = xh_vm_rtc_write(RTC_LMEM_LSB, ((uint8_t) lomem));
 assert(err == 0);
 err = xh_vm_rtc_write(RTC_LMEM_MSB, ((uint8_t) (lomem >> 8)));
 assert(err == 0);

 himem = xh_vm_get_highmem_size() / m_64KB;
 err = xh_vm_rtc_write(RTC_HMEM_LSB, ((uint8_t) himem));
 assert(err == 0);
 err = xh_vm_rtc_write(RTC_HMEM_SB, ((uint8_t) (himem >> 8)));
 assert(err == 0);
 err = xh_vm_rtc_write(RTC_HMEM_MSB, ((uint8_t) (himem >> 16)));
 assert(err == 0);

 err = xh_vm_rtc_settime(rtc_time(use_localtime));
 assert(err == 0);
}
