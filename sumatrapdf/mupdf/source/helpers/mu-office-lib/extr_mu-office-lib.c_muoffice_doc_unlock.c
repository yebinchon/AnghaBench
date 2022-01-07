
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mutexes; } ;
typedef TYPE_1__ MuOfficeLib ;


 size_t DOCLOCK ;
 int mu_unlock_mutex (int *) ;

__attribute__((used)) static void muoffice_doc_unlock(MuOfficeLib *mu)
{
 mu_unlock_mutex(&mu->mutexes[DOCLOCK]);
}
