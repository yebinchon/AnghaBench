
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;


 scalar_t__ USEC_PER_SEC ;
 int assert_se (int) ;
 int usleep (scalar_t__) ;

__attribute__((used)) static void sleep_for(usec_t usecs) {

        assert_se(usecs < USEC_PER_SEC);
        usleep(usecs);
}
