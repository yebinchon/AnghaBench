
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_api_routines ;
typedef int sqlite3 ;


 int CsvModule ;
 int CsvModuleFauxWrite ;
 int SQLITE_EXTENSION_INIT2 (int const*) ;
 int SQLITE_OK ;
 int sqlite3_create_module (int *,char*,int *,int ) ;

int sqlite3_csv_init(
  sqlite3 *db,
  char **pzErrMsg,
  const sqlite3_api_routines *pApi
){

  int rc;
  SQLITE_EXTENSION_INIT2(pApi);
  rc = sqlite3_create_module(db, "csv", &CsvModule, 0);





  return rc;



}
