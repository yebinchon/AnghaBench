
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int Token ;
struct TYPE_8__ {int nCol; TYPE_1__* aCol; TYPE_4__* pIndex; } ;
typedef TYPE_2__ Table ;
struct TYPE_10__ {int nKeyCol; int* aiColumn; char** azColl; struct TYPE_10__* pNext; } ;
struct TYPE_9__ {int * db; TYPE_2__* pNewTable; } ;
struct TYPE_7__ {char* zColl; } ;
typedef TYPE_3__ Parse ;
typedef TYPE_4__ Index ;


 int assert (int) ;
 int sqlite3DbFree (int *,char*) ;
 scalar_t__ sqlite3LocateCollSeq (TYPE_3__*,char*) ;
 char* sqlite3NameFromToken (int *,int *) ;

void sqlite3AddCollateType(Parse *pParse, Token *pToken){
  Table *p;
  int i;
  char *zColl;
  sqlite3 *db;

  if( (p = pParse->pNewTable)==0 ) return;
  i = p->nCol-1;
  db = pParse->db;
  zColl = sqlite3NameFromToken(db, pToken);
  if( !zColl ) return;

  if( sqlite3LocateCollSeq(pParse, zColl) ){
    Index *pIdx;
    sqlite3DbFree(db, p->aCol[i].zColl);
    p->aCol[i].zColl = zColl;





    for(pIdx=p->pIndex; pIdx; pIdx=pIdx->pNext){
      assert( pIdx->nKeyCol==1 );
      if( pIdx->aiColumn[0]==i ){
        pIdx->azColl[0] = p->aCol[i].zColl;
      }
    }
  }else{
    sqlite3DbFree(db, zColl);
  }
}
