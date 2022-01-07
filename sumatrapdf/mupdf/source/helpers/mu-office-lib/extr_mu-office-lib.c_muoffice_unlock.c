
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * mutexes; } ;
typedef TYPE_1__ MuOfficeLib ;


 int mu_unlock_mutex (int *) ;

__attribute__((used)) static void muoffice_unlock(void *user, int lock)
{
 MuOfficeLib *mu = (MuOfficeLib *)user;

 mu_unlock_mutex(&mu->mutexes[lock]);
}
