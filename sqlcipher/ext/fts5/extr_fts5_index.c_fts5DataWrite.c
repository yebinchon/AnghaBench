
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int i64 ;
struct TYPE_6__ {int zName; int zDb; } ;
struct TYPE_5__ {scalar_t__ rc; scalar_t__ pWriter; TYPE_2__* pConfig; } ;
typedef TYPE_1__ Fts5Index ;
typedef TYPE_2__ Fts5Config ;


 scalar_t__ SQLITE_OK ;
 int SQLITE_STATIC ;
 int fts5IndexPrepareStmt (TYPE_1__*,scalar_t__*,int ) ;
 int sqlite3_bind_blob (scalar_t__,int,int const*,int,int ) ;
 int sqlite3_bind_int64 (scalar_t__,int,int ) ;
 int sqlite3_bind_null (scalar_t__,int) ;
 int sqlite3_mprintf (char*,int ,int ) ;
 scalar_t__ sqlite3_reset (scalar_t__) ;
 int sqlite3_step (scalar_t__) ;

__attribute__((used)) static void fts5DataWrite(Fts5Index *p, i64 iRowid, const u8 *pData, int nData){
  if( p->rc!=SQLITE_OK ) return;

  if( p->pWriter==0 ){
    Fts5Config *pConfig = p->pConfig;
    fts5IndexPrepareStmt(p, &p->pWriter, sqlite3_mprintf(
          "REPLACE INTO '%q'.'%q_data'(id, block) VALUES(?,?)",
          pConfig->zDb, pConfig->zName
    ));
    if( p->rc ) return;
  }

  sqlite3_bind_int64(p->pWriter, 1, iRowid);
  sqlite3_bind_blob(p->pWriter, 2, pData, nData, SQLITE_STATIC);
  sqlite3_step(p->pWriter);
  p->rc = sqlite3_reset(p->pWriter);
  sqlite3_bind_null(p->pWriter, 2);
}
