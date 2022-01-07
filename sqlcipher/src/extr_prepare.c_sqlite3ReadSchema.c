
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int busy; } ;
struct TYPE_7__ {int mDbFlags; scalar_t__ noSharedCache; TYPE_1__ init; int mutex; } ;
typedef TYPE_2__ sqlite3 ;
struct TYPE_8__ {int rc; int nErr; int zErrMsg; TYPE_2__* db; } ;
typedef TYPE_3__ Parse ;


 int DBFLAG_SchemaKnownOk ;
 int SQLITE_OK ;
 int assert (int ) ;
 int sqlite3Init (TYPE_2__*,int *) ;
 int sqlite3_mutex_held (int ) ;

int sqlite3ReadSchema(Parse *pParse){
  int rc = SQLITE_OK;
  sqlite3 *db = pParse->db;
  assert( sqlite3_mutex_held(db->mutex) );
  if( !db->init.busy ){
    rc = sqlite3Init(db, &pParse->zErrMsg);
    if( rc!=SQLITE_OK ){
      pParse->rc = rc;
      pParse->nErr++;
    }else if( db->noSharedCache ){
      db->mDbFlags |= DBFLAG_SchemaKnownOk;
    }
  }
  return rc;
}
