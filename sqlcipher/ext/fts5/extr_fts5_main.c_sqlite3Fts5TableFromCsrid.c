
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_4__ {scalar_t__ pVtab; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
typedef int Fts5Table ;
typedef int Fts5Global ;
typedef TYPE_2__ Fts5Cursor ;


 TYPE_2__* fts5CursorFromCsrid (int *,int ) ;

Fts5Table *sqlite3Fts5TableFromCsrid(
  Fts5Global *pGlobal,
  i64 iCsrId
){
  Fts5Cursor *pCsr;
  pCsr = fts5CursorFromCsrid(pGlobal, iCsrId);
  if( pCsr ){
    return (Fts5Table*)pCsr->base.pVtab;
  }
  return 0;
}
