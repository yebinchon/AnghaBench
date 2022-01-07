
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3 ;
typedef size_t i16 ;
struct TYPE_10__ {TYPE_1__* aCol; } ;
typedef TYPE_4__ Table ;
struct TYPE_11__ {char* zColAff; int nColumn; size_t* aiColumn; TYPE_3__* aColExpr; TYPE_4__* pTable; } ;
struct TYPE_9__ {TYPE_2__* a; } ;
struct TYPE_8__ {int pExpr; } ;
struct TYPE_7__ {char affinity; } ;
typedef TYPE_5__ Index ;


 char SQLITE_AFF_BLOB ;
 char SQLITE_AFF_INTEGER ;
 size_t XN_EXPR ;
 size_t XN_ROWID ;
 int assert (int) ;
 scalar_t__ sqlite3DbMallocRaw (int ,int) ;
 char sqlite3ExprAffinity (int ) ;
 int sqlite3OomFault (int *) ;

const char *sqlite3IndexAffinityStr(sqlite3 *db, Index *pIdx){
  if( !pIdx->zColAff ){
    int n;
    Table *pTab = pIdx->pTable;
    pIdx->zColAff = (char *)sqlite3DbMallocRaw(0, pIdx->nColumn+1);
    if( !pIdx->zColAff ){
      sqlite3OomFault(db);
      return 0;
    }
    for(n=0; n<pIdx->nColumn; n++){
      i16 x = pIdx->aiColumn[n];
      if( x>=0 ){
        pIdx->zColAff[n] = pTab->aCol[x].affinity;
      }else if( x==XN_ROWID ){
        pIdx->zColAff[n] = SQLITE_AFF_INTEGER;
      }else{
        char aff;
        assert( x==XN_EXPR );
        assert( pIdx->aColExpr!=0 );
        aff = sqlite3ExprAffinity(pIdx->aColExpr->a[n].pExpr);
        if( aff==0 ) aff = SQLITE_AFF_BLOB;
        pIdx->zColAff[n] = aff;
      }
    }
    pIdx->zColAff[n] = 0;
  }

  return pIdx->zColAff;
}
