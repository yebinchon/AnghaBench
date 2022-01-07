
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int nsec_t ;
typedef int clockid_t ;


 int assert_se (int) ;
 scalar_t__ clock_gettime (int ,struct timespec*) ;
 int map_clock_id (int ) ;
 int timespec_load_nsec (struct timespec*) ;

nsec_t now_nsec(clockid_t clock_id) {
        struct timespec ts;

        assert_se(clock_gettime(map_clock_id(clock_id), &ts) == 0);

        return timespec_load_nsec(&ts);
}
