
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3_vtab ;
struct TYPE_8__ {int * pVtab; } ;
struct TYPE_10__ {scalar_t__ ePlan; TYPE_2__ base; struct TYPE_10__* pNext; } ;
struct TYPE_9__ {TYPE_1__* pGlobal; } ;
struct TYPE_7__ {TYPE_4__* pCsr; } ;
typedef TYPE_3__ Fts5FullTable ;
typedef TYPE_4__ Fts5Cursor ;


 int CsrFlagSet (TYPE_4__*,int ) ;
 int FTS5CSR_REQUIRE_RESEEK ;
 scalar_t__ FTS5_PLAN_MATCH ;

__attribute__((used)) static void fts5TripCursors(Fts5FullTable *pTab){
  Fts5Cursor *pCsr;
  for(pCsr=pTab->pGlobal->pCsr; pCsr; pCsr=pCsr->pNext){
    if( pCsr->ePlan==FTS5_PLAN_MATCH
     && pCsr->base.pVtab==(sqlite3_vtab*)pTab
    ){
      CsrFlagSet(pCsr, FTS5CSR_REQUIRE_RESEEK);
    }
  }
}
