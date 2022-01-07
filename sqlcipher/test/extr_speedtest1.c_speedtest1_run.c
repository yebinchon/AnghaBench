
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_stmt ;
struct TYPE_2__ {int nResult; char* zResult; int * pStmt; int db; scalar_t__ bReprepare; scalar_t__ bSqlOnly; } ;


 scalar_t__ SQLITE_ROW ;
 int assert (int *) ;
 TYPE_1__ g ;
 int memcpy (char*,char const*,int) ;
 int speedtest1_shrink_memory () ;
 int sqlite3_column_count (int *) ;
 scalar_t__ sqlite3_column_text (int *,int) ;
 int sqlite3_finalize (int *) ;
 int sqlite3_prepare_v2 (int ,int ,int,int **,int ) ;
 int sqlite3_reset (int *) ;
 int sqlite3_sql (int *) ;
 scalar_t__ sqlite3_step (int *) ;
 scalar_t__ strlen (char const*) ;

void speedtest1_run(void){
  int i, n, len;
  if( g.bSqlOnly ) return;
  assert( g.pStmt );
  g.nResult = 0;
  while( sqlite3_step(g.pStmt)==SQLITE_ROW ){
    n = sqlite3_column_count(g.pStmt);
    for(i=0; i<n; i++){
      const char *z = (const char*)sqlite3_column_text(g.pStmt, i);
      if( z==0 ) z = "nil";
      len = (int)strlen(z);
      if( g.nResult+len<sizeof(g.zResult)-2 ){
        if( g.nResult>0 ) g.zResult[g.nResult++] = ' ';
        memcpy(g.zResult + g.nResult, z, len+1);
        g.nResult += len;
      }
    }
  }
  {
    sqlite3_reset(g.pStmt);
  }
  speedtest1_shrink_memory();
}
