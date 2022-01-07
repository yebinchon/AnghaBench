
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
struct itimerval {int it_value; } ;


 int ITIMER_REAL ;
 int assert_se (int) ;
 scalar_t__ setitimer (int ,struct itimerval*,int *) ;
 int timeval_store (int *,int ) ;

__attribute__((used)) static void set_alarm(usec_t usecs) {
        struct itimerval v = { };

        timeval_store(&v.it_value, usecs);
        assert_se(setitimer(ITIMER_REAL, &v, ((void*)0)) >= 0);
}
