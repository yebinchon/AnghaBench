
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int nDb; scalar_t__ nSchemaLock; TYPE_1__* aDb; int mDbFlags; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_7__ {int pSchema; } ;


 int DBFLAG_SchemaKnownOk ;
 int DB_ResetWanted ;
 scalar_t__ DbHasProperty (TYPE_2__*,int,int ) ;
 int DbSetProperty (TYPE_2__*,int,int ) ;
 int assert (int) ;
 int sqlite3SchemaClear (int ) ;
 int sqlite3SchemaMutexHeld (TYPE_2__*,int,int ) ;

void sqlite3ResetOneSchema(sqlite3 *db, int iDb){
  int i;
  assert( iDb<db->nDb );

  if( iDb>=0 ){
    assert( sqlite3SchemaMutexHeld(db, iDb, 0) );
    DbSetProperty(db, iDb, DB_ResetWanted);
    DbSetProperty(db, 1, DB_ResetWanted);
    db->mDbFlags &= ~DBFLAG_SchemaKnownOk;
  }

  if( db->nSchemaLock==0 ){
    for(i=0; i<db->nDb; i++){
      if( DbHasProperty(db, i, DB_ResetWanted) ){
        sqlite3SchemaClear(db->aDb[i].pSchema);
      }
    }
  }
}
