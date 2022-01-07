
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _RTC_Initialize () ;
 int initialized ;

void
__main(void)
{
    if (!initialized)
    {
        initialized = 1;

        _RTC_Initialize();
    }
}
