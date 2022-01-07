
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int i64 ;
struct TYPE_6__ {int zName; int zDb; } ;
struct TYPE_5__ {scalar_t__ rc; scalar_t__ pDeleter; TYPE_2__* pConfig; } ;
typedef TYPE_1__ Fts5Index ;
typedef TYPE_2__ Fts5Config ;


 scalar_t__ SQLITE_OK ;
 scalar_t__ fts5IndexPrepareStmt (TYPE_1__*,scalar_t__*,char*) ;
 int sqlite3_bind_int64 (scalar_t__,int,int ) ;
 char* sqlite3_mprintf (char*,int ,int ) ;
 scalar_t__ sqlite3_reset (scalar_t__) ;
 int sqlite3_step (scalar_t__) ;

__attribute__((used)) static void fts5DataDelete(Fts5Index *p, i64 iFirst, i64 iLast){
  if( p->rc!=SQLITE_OK ) return;

  if( p->pDeleter==0 ){
    Fts5Config *pConfig = p->pConfig;
    char *zSql = sqlite3_mprintf(
        "DELETE FROM '%q'.'%q_data' WHERE id>=? AND id<=?",
          pConfig->zDb, pConfig->zName
    );
    if( fts5IndexPrepareStmt(p, &p->pDeleter, zSql) ) return;
  }

  sqlite3_bind_int64(p->pDeleter, 1, iFirst);
  sqlite3_bind_int64(p->pDeleter, 2, iLast);
  sqlite3_step(p->pDeleter);
  p->rc = sqlite3_reset(p->pDeleter);
}
