
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ accError; } ;
typedef TYPE_1__ sqlite3_str ;
typedef int sqlite3_context ;


 scalar_t__ SQLITE_NOMEM ;
 scalar_t__ SQLITE_TOOBIG ;
 int SQLITE_TRANSIENT ;
 scalar_t__ sqlite3_aggregate_context (int *,int ) ;
 int sqlite3_result_error_nomem (int *) ;
 int sqlite3_result_error_toobig (int *) ;
 int sqlite3_result_text (int *,char const*,int,int ) ;
 char* sqlite3_str_value (TYPE_1__*) ;

__attribute__((used)) static void groupConcatValue(sqlite3_context *context){
  sqlite3_str *pAccum;
  pAccum = (sqlite3_str*)sqlite3_aggregate_context(context, 0);
  if( pAccum ){
    if( pAccum->accError==SQLITE_TOOBIG ){
      sqlite3_result_error_toobig(context);
    }else if( pAccum->accError==SQLITE_NOMEM ){
      sqlite3_result_error_nomem(context);
    }else{
      const char *zText = sqlite3_str_value(pAccum);
      sqlite3_result_text(context, zText, -1, SQLITE_TRANSIENT);
    }
  }
}
