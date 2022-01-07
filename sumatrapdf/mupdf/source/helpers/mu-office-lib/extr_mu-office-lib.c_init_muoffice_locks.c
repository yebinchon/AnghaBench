
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int unlock; int lock; TYPE_2__* user; } ;
typedef TYPE_1__ fz_locks_context ;
struct TYPE_7__ {TYPE_1__ locks; int * mutexes; } ;
typedef TYPE_2__ MuOfficeLib ;


 int FZ_LOCK_MAX ;
 int fin_muoffice_locks (TYPE_2__*) ;
 int mu_create_mutex (int *) ;
 int muoffice_lock ;
 int muoffice_unlock ;

__attribute__((used)) static fz_locks_context *init_muoffice_locks(MuOfficeLib *mu)
{
 int i;
 int failed = 0;

 for (i = 0; i < FZ_LOCK_MAX+1; i++)
  failed |= mu_create_mutex(&mu->mutexes[i]);

 if (failed)
 {
  fin_muoffice_locks(mu);
  return ((void*)0);
 }

 mu->locks.user = mu;
 mu->locks.lock = muoffice_lock;
 mu->locks.unlock = muoffice_unlock;

 return &mu->locks;
}
