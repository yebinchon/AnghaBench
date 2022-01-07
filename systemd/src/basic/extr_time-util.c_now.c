
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
struct timespec {int dummy; } ;
typedef int clockid_t ;


 int assert_se (int) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int map_clock_id (int ) ;
 int timespec_load (struct timespec*) ;

usec_t now(clockid_t clock_id) {
        struct timespec ts;

        assert_se(clock_gettime(map_clock_id(clock_id), &ts) == 0);

        return timespec_load(&ts);
}
