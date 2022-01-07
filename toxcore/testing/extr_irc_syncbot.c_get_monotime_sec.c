
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int current_time_monotonic () ;

uint64_t get_monotime_sec(void)
{
    return current_time_monotonic() / 1000;
}
