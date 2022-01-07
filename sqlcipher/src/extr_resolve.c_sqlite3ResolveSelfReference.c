
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sSrc ;
typedef int sNC ;
struct TYPE_10__ {int zName; } ;
typedef TYPE_2__ Table ;
struct TYPE_11__ {int nSrc; int ncFlags; struct TYPE_11__* pSrcList; int * pParse; TYPE_1__* a; } ;
struct TYPE_9__ {int iCursor; TYPE_2__* pTab; int zName; } ;
typedef TYPE_3__ SrcList ;
typedef int Parse ;
typedef TYPE_3__ NameContext ;
typedef int ExprList ;
typedef int Expr ;


 int NC_IdxExpr ;
 int NC_IsCheck ;
 int NC_PartIdx ;
 int SQLITE_OK ;
 int assert (int) ;
 int memset (TYPE_3__*,int ,int) ;
 int sqlite3ResolveExprListNames (TYPE_3__*,int *) ;
 int sqlite3ResolveExprNames (TYPE_3__*,int *) ;

int sqlite3ResolveSelfReference(
  Parse *pParse,
  Table *pTab,
  int type,
  Expr *pExpr,
  ExprList *pList
){
  SrcList sSrc;
  NameContext sNC;
  int rc;

  assert( type==0 || pTab!=0 );
  assert( type==NC_IsCheck || type==NC_PartIdx || type==NC_IdxExpr || pTab==0 );
  memset(&sNC, 0, sizeof(sNC));
  memset(&sSrc, 0, sizeof(sSrc));
  if( pTab ){
    sSrc.nSrc = 1;
    sSrc.a[0].zName = pTab->zName;
    sSrc.a[0].pTab = pTab;
    sSrc.a[0].iCursor = -1;
  }
  sNC.pParse = pParse;
  sNC.pSrcList = &sSrc;
  sNC.ncFlags = type;
  if( (rc = sqlite3ResolveExprNames(&sNC, pExpr))!=SQLITE_OK ) return rc;
  if( pList ) rc = sqlite3ResolveExprListNames(&sNC, pList);
  return rc;
}
