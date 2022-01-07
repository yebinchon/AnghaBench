
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sqlite ;
typedef int Error ;


 int STRESS2_TABCNT ;
 int sql_script_printf (int *,int *,char*,int) ;

__attribute__((used)) static void stress2_workload1(Error *pErr, Sqlite *pDb, int i){
  int iTab = (i % (STRESS2_TABCNT-1)) + 1;
  sql_script_printf(pErr, pDb,
      "CREATE TABLE IF NOT EXISTS t%d(x PRIMARY KEY, y, z);", iTab
  );
}
