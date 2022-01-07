
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_3__ {int dlw; int plw; } ;
typedef TYPE_1__ DLCollector ;


 int plwDestroy (int *) ;
 int plwInit (int *,int *,int ) ;
 int plwTerminate (int *) ;

__attribute__((used)) static void dlcNext(DLCollector *pCollector, sqlite_int64 iDocid){
  plwTerminate(&pCollector->plw);
  plwDestroy(&pCollector->plw);
  plwInit(&pCollector->plw, &pCollector->dlw, iDocid);
}
