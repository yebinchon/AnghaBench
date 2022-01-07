
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_context ;
typedef int sqlite3 ;


 int SQLITE_DBCONFIG_ENABLE_FTS3_TOKENIZER ;
 int * sqlite3_context_db_handle (int *) ;
 int sqlite3_db_config (int *,int ,int,int*) ;

__attribute__((used)) static int fts3TokenizerEnabled(sqlite3_context *context){
  sqlite3 *db = sqlite3_context_db_handle(context);
  int isEnabled = 0;
  sqlite3_db_config(db,SQLITE_DBCONFIG_ENABLE_FTS3_TOKENIZER,-1,&isEnabled);
  return isEnabled;
}
