
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_6__ {scalar_t__ rc; scalar_t__ pDataVersion; TYPE_1__* pConfig; } ;
struct TYPE_5__ {int zDb; } ;
typedef TYPE_2__ Fts5Index ;


 scalar_t__ SQLITE_OK ;
 scalar_t__ SQLITE_ROW ;
 scalar_t__ fts5IndexPrepareStmt (TYPE_2__*,scalar_t__*,int ) ;
 int sqlite3_column_int64 (scalar_t__,int ) ;
 int sqlite3_mprintf (char*,int ) ;
 scalar_t__ sqlite3_reset (scalar_t__) ;
 scalar_t__ sqlite3_step (scalar_t__) ;

__attribute__((used)) static i64 fts5IndexDataVersion(Fts5Index *p){
  i64 iVersion = 0;

  if( p->rc==SQLITE_OK ){
    if( p->pDataVersion==0 ){
      p->rc = fts5IndexPrepareStmt(p, &p->pDataVersion,
          sqlite3_mprintf("PRAGMA %Q.data_version", p->pConfig->zDb)
          );
      if( p->rc ) return 0;
    }

    if( SQLITE_ROW==sqlite3_step(p->pDataVersion) ){
      iVersion = sqlite3_column_int64(p->pDataVersion, 0);
    }
    p->rc = sqlite3_reset(p->pDataVersion);
  }

  return iVersion;
}
