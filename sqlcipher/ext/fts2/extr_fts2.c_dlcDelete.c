
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int b; int dlw; int plw; } ;
typedef TYPE_1__ DLCollector ;


 int SCRAMBLE (TYPE_1__*) ;
 int dataBufferDestroy (int *) ;
 int dlwDestroy (int *) ;
 int plwDestroy (int *) ;
 int sqlite3_free (TYPE_1__*) ;

__attribute__((used)) static void dlcDelete(DLCollector *pCollector){
  plwDestroy(&pCollector->plw);
  dlwDestroy(&pCollector->dlw);
  dataBufferDestroy(&pCollector->b);
  SCRAMBLE(pCollector);
  sqlite3_free(pCollector);
}
