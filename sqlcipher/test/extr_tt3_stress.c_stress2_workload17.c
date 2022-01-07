
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sqlite ;
typedef int Error ;


 int sql_script_printf (int *,int *,char*,char*) ;

__attribute__((used)) static void stress2_workload17(Error *pErr, Sqlite *pDb, int i){
  sql_script_printf(pErr, pDb,
      "PRAGMA journal_mode = %q", (i%2) ? "delete" : "wal"
  );
}
