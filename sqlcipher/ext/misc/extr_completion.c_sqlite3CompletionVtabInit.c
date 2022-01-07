
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3 ;


 int SQLITE_OK ;
 int completionModule ;
 int sqlite3_create_module (int *,char*,int *,int ) ;

int sqlite3CompletionVtabInit(sqlite3 *db){
  int rc = SQLITE_OK;

  rc = sqlite3_create_module(db, "completion", &completionModule, 0);

  return rc;
}
