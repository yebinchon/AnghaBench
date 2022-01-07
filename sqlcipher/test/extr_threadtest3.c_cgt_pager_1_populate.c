
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i64 ;
typedef int Sqlite ;
typedef int Error ;


 int CALLGRINDTEST1_NROW ;
 int execsql (int *,int *,char const*,int*,int*) ;
 int sql_script (int *,int *,char*) ;

__attribute__((used)) static void cgt_pager_1_populate(Error *pErr, Sqlite *pDb){
  const char *zInsert = "INSERT INTO t1 VALUES(:iRow, zeroblob(:iBlob))";
  i64 iRow;
  sql_script(pErr, pDb, "BEGIN");
  for(iRow=1; iRow<=CALLGRINDTEST1_NROW; iRow++){
    i64 iBlob = 600 + (iRow%300);
    execsql(pErr, pDb, zInsert, &iRow, &iBlob);
  }
  sql_script(pErr, pDb, "COMMIT");
}
