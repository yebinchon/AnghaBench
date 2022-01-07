
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mutexes; } ;
typedef TYPE_1__ MuOfficeLib ;


 int FZ_LOCK_MAX ;
 int mu_destroy_mutex (int *) ;

__attribute__((used)) static void fin_muoffice_locks(MuOfficeLib *mu)
{
 int i;

 for (i = 0; i < FZ_LOCK_MAX+1; i++)
  mu_destroy_mutex(&mu->mutexes[i]);
}
