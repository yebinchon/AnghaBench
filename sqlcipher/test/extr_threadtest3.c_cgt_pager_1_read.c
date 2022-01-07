
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i64 ;
typedef int Sqlite ;
typedef int Error ;


 int CALLGRINDTEST1_NROW ;
 int execsql (int *,int *,char*,int*) ;
 int sql_script (int *,int *,char*) ;

__attribute__((used)) static void cgt_pager_1_read(Error *pErr, Sqlite *pDb){
  i64 iRow;
  sql_script(pErr, pDb, "BEGIN");
  for(iRow=1; iRow<=CALLGRINDTEST1_NROW; iRow++){
    execsql(pErr, pDb, "SELECT * FROM t1 WHERE a = :iRow", &iRow);
  }
  sql_script(pErr, pDb, "COMMIT");
}
