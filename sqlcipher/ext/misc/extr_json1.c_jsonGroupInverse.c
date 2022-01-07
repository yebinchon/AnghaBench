
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_2__ {char* zBuf; int nUsed; } ;
typedef TYPE_1__ JsonString ;


 scalar_t__ NEVER (int) ;
 int UNUSED_PARAM (int) ;
 int assert (int) ;
 int memmove (char*,char*,size_t) ;
 scalar_t__ sqlite3_aggregate_context (int *,int ) ;

__attribute__((used)) static void jsonGroupInverse(
  sqlite3_context *ctx,
  int argc,
  sqlite3_value **argv
){
  int i;
  int inStr = 0;
  char *z;
  JsonString *pStr;
  UNUSED_PARAM(argc);
  UNUSED_PARAM(argv);
  pStr = (JsonString*)sqlite3_aggregate_context(ctx, 0);





  z = pStr->zBuf;
  for(i=1; z[i]!=',' || inStr; i++){
    assert( i<pStr->nUsed );
    if( z[i]=='"' ){
      inStr = !inStr;
    }else if( z[i]=='\\' ){
      i++;
    }
  }
  pStr->nUsed -= i;
  memmove(&z[1], &z[i+1], (size_t)pStr->nUsed-1);
}
