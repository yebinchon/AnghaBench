
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;


 int CLOCK_MONOTONIC ;
 int abort () ;
 scalar_t__ clock_getres (int ,struct timespec*) ;
 scalar_t__ unlikely (int) ;
 int vlc_clock_prec ;

__attribute__((used)) static void vlc_clock_setup_once (void)
{
    struct timespec res;
    if (unlikely(clock_getres(CLOCK_MONOTONIC, &res) != 0 || res.tv_sec != 0))
        abort ();
    vlc_clock_prec = (res.tv_nsec + 500) / 1000;
}
