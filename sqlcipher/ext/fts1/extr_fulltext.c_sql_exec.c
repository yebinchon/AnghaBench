
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int free (char*) ;
 int sqlite3_exec (int *,char*,int *,int ,int *) ;
 char* string_format (char const*,char const*) ;

__attribute__((used)) static int sql_exec(sqlite3 *db, const char *zName, const char *zFormat){
  char *zCommand = string_format(zFormat, zName);
  int rc = sqlite3_exec(db, zCommand, ((void*)0), 0, ((void*)0));
  free(zCommand);
  return rc;
}
