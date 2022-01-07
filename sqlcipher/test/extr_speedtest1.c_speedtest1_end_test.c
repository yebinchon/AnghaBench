
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_int64 ;
struct TYPE_2__ {int iStart; int iTotal; scalar_t__ pStmt; int bSqlOnly; } ;


 TYPE_1__ g ;
 int printf (char*,int,int) ;
 int speedtest1_timestamp () ;
 int sqlite3_finalize (scalar_t__) ;

void speedtest1_end_test(void){
  sqlite3_int64 iElapseTime = speedtest1_timestamp() - g.iStart;
  if( !g.bSqlOnly ){
    g.iTotal += iElapseTime;
    printf("%4d.%03ds\n", (int)(iElapseTime/1000), (int)(iElapseTime%1000));
  }
  if( g.pStmt ){
    sqlite3_finalize(g.pStmt);
    g.pStmt = 0;
  }
}
