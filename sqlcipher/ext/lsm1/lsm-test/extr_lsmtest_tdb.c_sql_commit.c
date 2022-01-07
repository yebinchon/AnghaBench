
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TestDb ;
struct TYPE_2__ {int nOpenTrans; int db; } ;
typedef TYPE_1__ SqlDb ;


 int assert (int) ;
 int sqlite3_exec (int ,char*,int ,int ,int ) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int) ;

__attribute__((used)) static int sql_commit(TestDb *pTestDb, int iLevel){
  SqlDb *pDb = (SqlDb *)pTestDb;
  assert( iLevel>=0 );


  if( pDb->nOpenTrans>=1 && iLevel==0 ){
    int rc = sqlite3_exec(pDb->db, "COMMIT", 0, 0, 0);
    if( rc!=0 ) return rc;
    pDb->nOpenTrans = 0;
  }


  if( pDb->nOpenTrans>iLevel ){
    char *zSql = sqlite3_mprintf("RELEASE x%d", iLevel);
    int rc = sqlite3_exec(pDb->db, zSql, 0, 0, 0);
    sqlite3_free(zSql);
    if( rc!=0 ) return rc;
  }

  pDb->nOpenTrans = iLevel;
  return 0;
}
