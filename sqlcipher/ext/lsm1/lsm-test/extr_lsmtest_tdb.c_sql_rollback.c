
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

__attribute__((used)) static int sql_rollback(TestDb *pTestDb, int iLevel){
  SqlDb *pDb = (SqlDb *)pTestDb;
  assert( iLevel>=0 );

  if( pDb->nOpenTrans>=1 && iLevel==0 ){

    int rc = sqlite3_exec(pDb->db, "ROLLBACK", 0, 0, 0);
    if( rc!=0 ) return rc;
  }else if( pDb->nOpenTrans>1 && iLevel==1 ){

    int rc = sqlite3_exec(pDb->db, "ROLLBACK TO x1; RELEASE x1;", 0, 0, 0);
    if( rc!=0 ) return rc;
  }else{

    char *zSql = sqlite3_mprintf("ROLLBACK TO x%d", iLevel-1);
    int rc = sqlite3_exec(pDb->db, zSql, 0, 0, 0);
    sqlite3_free(zSql);
    if( rc!=0 ) return rc;
  }

  pDb->nOpenTrans = iLevel;
  return 0;
}
