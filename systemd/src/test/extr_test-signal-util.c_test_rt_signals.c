
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGRTMAX ;
 int SIGRTMIN ;
 int assert (int) ;
 int info (int) ;

__attribute__((used)) static void test_rt_signals(void) {
        info(SIGRTMIN);
        info(SIGRTMAX);


        assert(SIGRTMAX - SIGRTMIN >= 24);
}
