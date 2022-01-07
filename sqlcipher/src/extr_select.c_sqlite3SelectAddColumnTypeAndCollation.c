
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct ExprList_item {int * pExpr; } ;
struct TYPE_19__ {scalar_t__ mallocFailed; } ;
typedef TYPE_2__ sqlite3 ;
typedef int sNC ;
struct TYPE_20__ {int nCol; int szTabRow; TYPE_7__* aCol; } ;
typedef TYPE_3__ Table ;
struct TYPE_25__ {int zName; } ;
struct TYPE_24__ {scalar_t__ affinity; char const* zName; scalar_t__ zColl; int colFlags; } ;
struct TYPE_23__ {int pSrcList; } ;
struct TYPE_22__ {TYPE_2__* db; } ;
struct TYPE_21__ {int selFlags; TYPE_1__* pEList; int pSrc; } ;
struct TYPE_18__ {int nExpr; struct ExprList_item* a; } ;
typedef TYPE_4__ Select ;
typedef TYPE_5__ Parse ;
typedef TYPE_6__ NameContext ;
typedef int Expr ;
typedef TYPE_7__ Column ;
typedef TYPE_8__ CollSeq ;


 int COLFLAG_HASTYPE ;
 int SF_Resolved ;
 scalar_t__ SQLITE_AFF_BLOB ;
 int assert (int) ;
 char* columnType (TYPE_6__*,int *,int ,int ,int ) ;
 int memcpy (char const*,char const*,int) ;
 int memset (TYPE_6__*,int ,int) ;
 char const* sqlite3DbReallocOrFree (TYPE_2__*,char const*,int) ;
 scalar_t__ sqlite3DbStrDup (TYPE_2__*,int ) ;
 scalar_t__ sqlite3ExprAffinity (int *) ;
 TYPE_8__* sqlite3ExprCollSeq (TYPE_5__*,int *) ;
 int sqlite3Strlen30 (char const*) ;

void sqlite3SelectAddColumnTypeAndCollation(
  Parse *pParse,
  Table *pTab,
  Select *pSelect
){
  sqlite3 *db = pParse->db;
  NameContext sNC;
  Column *pCol;
  CollSeq *pColl;
  int i;
  Expr *p;
  struct ExprList_item *a;

  assert( pSelect!=0 );
  assert( (pSelect->selFlags & SF_Resolved)!=0 );
  assert( pTab->nCol==pSelect->pEList->nExpr || db->mallocFailed );
  if( db->mallocFailed ) return;
  memset(&sNC, 0, sizeof(sNC));
  sNC.pSrcList = pSelect->pSrc;
  a = pSelect->pEList->a;
  for(i=0, pCol=pTab->aCol; i<pTab->nCol; i++, pCol++){
    const char *zType;
    int n, m;
    p = a[i].pExpr;
    zType = columnType(&sNC, p, 0, 0, 0);

    pCol->affinity = sqlite3ExprAffinity(p);
    if( zType ){
      m = sqlite3Strlen30(zType);
      n = sqlite3Strlen30(pCol->zName);
      pCol->zName = sqlite3DbReallocOrFree(db, pCol->zName, n+m+2);
      if( pCol->zName ){
        memcpy(&pCol->zName[n+1], zType, m+1);
        pCol->colFlags |= COLFLAG_HASTYPE;
      }
    }
    if( pCol->affinity==0 ) pCol->affinity = SQLITE_AFF_BLOB;
    pColl = sqlite3ExprCollSeq(pParse, p);
    if( pColl && pCol->zColl==0 ){
      pCol->zColl = sqlite3DbStrDup(db, pColl->zName);
    }
  }
  pTab->szTabRow = 1;
}
