
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ctx; } ;
typedef TYPE_1__ MuOfficeLib ;


 int Pal_Mem_free (TYPE_1__*) ;
 int fin_muoffice_locks (TYPE_1__*) ;
 int fz_drop_context (int ) ;

void MuOfficeLib_destroy(MuOfficeLib *mu)
{
 if (mu == ((void*)0))
  return;

 fz_drop_context(mu->ctx);
 fin_muoffice_locks(mu);

 Pal_Mem_free(mu);
}
