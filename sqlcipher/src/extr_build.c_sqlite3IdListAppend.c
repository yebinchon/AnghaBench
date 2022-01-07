
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int Token ;
struct TYPE_13__ {scalar_t__ zName; } ;
struct TYPE_12__ {TYPE_9__* a; int nId; } ;
struct TYPE_11__ {int * db; } ;
typedef TYPE_1__ Parse ;
typedef TYPE_2__ IdList ;


 scalar_t__ IN_RENAME_OBJECT ;
 TYPE_9__* sqlite3ArrayAllocate (int *,TYPE_9__*,int,int *,int*) ;
 TYPE_2__* sqlite3DbMallocZero (int *,int) ;
 int sqlite3IdListDelete (int *,TYPE_2__*) ;
 scalar_t__ sqlite3NameFromToken (int *,int *) ;
 int sqlite3RenameTokenMap (TYPE_1__*,void*,int *) ;

IdList *sqlite3IdListAppend(Parse *pParse, IdList *pList, Token *pToken){
  sqlite3 *db = pParse->db;
  int i;
  if( pList==0 ){
    pList = sqlite3DbMallocZero(db, sizeof(IdList) );
    if( pList==0 ) return 0;
  }
  pList->a = sqlite3ArrayAllocate(
      db,
      pList->a,
      sizeof(pList->a[0]),
      &pList->nId,
      &i
  );
  if( i<0 ){
    sqlite3IdListDelete(db, pList);
    return 0;
  }
  pList->a[i].zName = sqlite3NameFromToken(db, pToken);
  if( IN_RENAME_OBJECT && pList->a[i].zName ){
    sqlite3RenameTokenMap(pParse, (void*)pList->a[i].zName, pToken);
  }
  return pList;
}
