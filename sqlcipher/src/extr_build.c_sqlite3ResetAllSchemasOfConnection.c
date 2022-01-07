
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int nDb; scalar_t__ nSchemaLock; int mDbFlags; TYPE_2__* aDb; } ;
typedef TYPE_1__ sqlite3 ;
struct TYPE_10__ {scalar_t__ pSchema; } ;
typedef TYPE_2__ Db ;


 int DBFLAG_SchemaChange ;
 int DBFLAG_SchemaKnownOk ;
 int DB_ResetWanted ;
 int DbSetProperty (TYPE_1__*,int,int ) ;
 int sqlite3BtreeEnterAll (TYPE_1__*) ;
 int sqlite3BtreeLeaveAll (TYPE_1__*) ;
 int sqlite3CollapseDatabaseArray (TYPE_1__*) ;
 int sqlite3SchemaClear (scalar_t__) ;
 int sqlite3VtabUnlockList (TYPE_1__*) ;

void sqlite3ResetAllSchemasOfConnection(sqlite3 *db){
  int i;
  sqlite3BtreeEnterAll(db);
  for(i=0; i<db->nDb; i++){
    Db *pDb = &db->aDb[i];
    if( pDb->pSchema ){
      if( db->nSchemaLock==0 ){
        sqlite3SchemaClear(pDb->pSchema);
      }else{
        DbSetProperty(db, i, DB_ResetWanted);
      }
    }
  }
  db->mDbFlags &= ~(DBFLAG_SchemaChange|DBFLAG_SchemaKnownOk);
  sqlite3VtabUnlockList(db);
  sqlite3BtreeLeaveAll(db);
  if( db->nSchemaLock==0 ){
    sqlite3CollapseDatabaseArray(db);
  }
}
