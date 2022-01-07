
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;


 int MAX3 (int,int,int) ;
 int MIN (int ,int) ;
 int USEC_PER_SEC ;
 int assert (int) ;

usec_t cgroup_cpu_adjust_period(usec_t period, usec_t quota, usec_t resolution, usec_t max_period) {



        assert(quota > 0);

        return MIN(MAX3(period, resolution, resolution * USEC_PER_SEC / quota), max_period);
}
