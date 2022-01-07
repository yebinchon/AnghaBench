
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGBUS ;
 int assert_se (int) ;
 scalar_t__ n_installed ;
 int old_sigaction ;
 scalar_t__ sigaction (int ,int *,int *) ;

void sigbus_reset(void) {

        if (n_installed <= 0)
                return;

        n_installed--;

        if (n_installed == 0)
                assert_se(sigaction(SIGBUS, &old_sigaction, ((void*)0)) == 0);

        return;
}
