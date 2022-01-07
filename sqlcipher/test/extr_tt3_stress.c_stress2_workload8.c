
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sqlite ;
typedef int Error ;


 int sql_script_printf (int *,int *,char*,int) ;

__attribute__((used)) static void stress2_workload8(Error *pErr, Sqlite *pDb, int i){
  sql_script_printf(pErr, pDb,
      "UPDATE t0 SET y = hex(randomblob(57)) "
      "WHERE x LIKE hex(%d %% 5) AND z='big';"
      ,i
  );
}
