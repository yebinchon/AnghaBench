
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unit_times {scalar_t__ activated; } ;
struct boot_times {scalar_t__ finish_time; } ;



__attribute__((used)) static bool times_in_range(const struct unit_times *times, const struct boot_times *boot) {
        return times && times->activated > 0 && times->activated <= boot->finish_time;
}
