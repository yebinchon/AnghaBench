
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_19__ {scalar_t__ mallocFailed; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_20__ {int nCte; TYPE_1__* a; } ;
typedef TYPE_3__ With ;
typedef int Token ;
struct TYPE_21__ {TYPE_2__* db; } ;
struct TYPE_18__ {char* zName; scalar_t__ zCteErr; int * pCols; int * pSelect; } ;
typedef int Select ;
typedef TYPE_4__ Parse ;
typedef int ExprList ;


 int assert (int) ;
 int sqlite3DbFree (TYPE_2__*,char*) ;
 TYPE_3__* sqlite3DbMallocZero (TYPE_2__*,int) ;
 TYPE_3__* sqlite3DbRealloc (TYPE_2__*,TYPE_3__*,int) ;
 int sqlite3ErrorMsg (TYPE_4__*,char*,char*) ;
 int sqlite3ExprListDelete (TYPE_2__*,int *) ;
 char* sqlite3NameFromToken (TYPE_2__*,int *) ;
 int sqlite3SelectDelete (TYPE_2__*,int *) ;
 scalar_t__ sqlite3StrICmp (char*,char*) ;

With *sqlite3WithAdd(
  Parse *pParse,
  With *pWith,
  Token *pName,
  ExprList *pArglist,
  Select *pQuery
){
  sqlite3 *db = pParse->db;
  With *pNew;
  char *zName;



  zName = sqlite3NameFromToken(pParse->db, pName);
  if( zName && pWith ){
    int i;
    for(i=0; i<pWith->nCte; i++){
      if( sqlite3StrICmp(zName, pWith->a[i].zName)==0 ){
        sqlite3ErrorMsg(pParse, "duplicate WITH table name: %s", zName);
      }
    }
  }

  if( pWith ){
    sqlite3_int64 nByte = sizeof(*pWith) + (sizeof(pWith->a[1]) * pWith->nCte);
    pNew = sqlite3DbRealloc(db, pWith, nByte);
  }else{
    pNew = sqlite3DbMallocZero(db, sizeof(*pWith));
  }
  assert( (pNew!=0 && zName!=0) || db->mallocFailed );

  if( db->mallocFailed ){
    sqlite3ExprListDelete(db, pArglist);
    sqlite3SelectDelete(db, pQuery);
    sqlite3DbFree(db, zName);
    pNew = pWith;
  }else{
    pNew->a[pNew->nCte].pSelect = pQuery;
    pNew->a[pNew->nCte].pCols = pArglist;
    pNew->a[pNew->nCte].zName = zName;
    pNew->a[pNew->nCte].zCteErr = 0;
    pNew->nCte++;
  }

  return pNew;
}
