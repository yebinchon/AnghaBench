
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int sqlite_int64 ;
struct TYPE_4__ {int dlw; int plw; int b; } ;
typedef int DocListType ;
typedef TYPE_1__ DLCollector ;


 int dataBufferInit (int *,int ) ;
 int dlwInit (int *,int ,int *) ;
 int plwInit (int *,int *,int ) ;
 TYPE_1__* sqlite3_malloc (int) ;

__attribute__((used)) static DLCollector *dlcNew(sqlite_int64 iDocid, DocListType iType){
  DLCollector *pCollector = sqlite3_malloc(sizeof(DLCollector));
  dataBufferInit(&pCollector->b, 0);
  dlwInit(&pCollector->dlw, iType, &pCollector->b);
  plwInit(&pCollector->plw, &pCollector->dlw, iDocid);
  return pCollector;
}
