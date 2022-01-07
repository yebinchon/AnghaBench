
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_2__ {int nOpenTrans; int db; } ;
typedef TYPE_1__ SqlDb ;


 int SQLITE_OK ;
 int sqlite3_exec (int ,char*,int ,int ,int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int) ;

__attribute__((used)) static int sql_begin(TestDb *pTestDb, int iLevel){
  int i;
  SqlDb *pDb = (SqlDb *)pTestDb;


  if( iLevel==0 ) return 0;


  if( pDb->nOpenTrans==0 ){
    int rc = sqlite3_exec(pDb->db,
        "BEGIN; SELECT * FROM sqlite_master LIMIT 1;" , 0, 0, 0
    );
    if( rc!=0 ) return rc;
    pDb->nOpenTrans = 1;
  }


  for(i=pDb->nOpenTrans; i<iLevel; i++){
    char *zSql = sqlite3_mprintf("SAVEPOINT x%d", i);
    int rc = sqlite3_exec(pDb->db, zSql, 0, 0, 0);
    sqlite3_free(zSql);
    if( rc!=SQLITE_OK ) return rc;
  }

  pDb->nOpenTrans = iLevel;
  return 0;
}
