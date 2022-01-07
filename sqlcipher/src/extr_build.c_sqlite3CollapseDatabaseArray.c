
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct Db {scalar_t__ pBt; struct Db* zDbSName; } ;
struct TYPE_4__ {int nDb; struct Db* aDbStatic; struct Db* aDb; } ;
typedef TYPE_1__ sqlite3 ;


 int memcpy (struct Db*,struct Db*,int) ;
 int sqlite3DbFree (TYPE_1__*,struct Db*) ;

void sqlite3CollapseDatabaseArray(sqlite3 *db){
  int i, j;
  for(i=j=2; i<db->nDb; i++){
    struct Db *pDb = &db->aDb[i];
    if( pDb->pBt==0 ){
      sqlite3DbFree(db, pDb->zDbSName);
      pDb->zDbSName = 0;
      continue;
    }
    if( j<i ){
      db->aDb[j] = db->aDb[i];
    }
    j++;
  }
  db->nDb = j;
  if( db->nDb<=2 && db->aDb!=db->aDbStatic ){
    memcpy(db->aDbStatic, db->aDb, 2*sizeof(db->aDb[0]));
    sqlite3DbFree(db, db->aDb);
    db->aDb = db->aDbStatic;
  }
}
