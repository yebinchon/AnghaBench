
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int ULONGLONG ;
typedef int BOOL ;


 int CLOCK_FREQ ;
 int QueryUnbiasedInterruptTime (int*) ;
 int abort () ;
 int static_assert (int,char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static vlc_tick_t mdate_interrupt (void)
{
    ULONGLONG ts;
    BOOL ret;

    ret = QueryUnbiasedInterruptTime (&ts);
    if (unlikely(!ret))
        abort ();


    static_assert ((10000000 % CLOCK_FREQ) == 0, "Broken frequencies ratio");
    return ts / (10000000 / CLOCK_FREQ);
}
