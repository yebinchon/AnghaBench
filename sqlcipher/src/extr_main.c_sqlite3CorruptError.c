
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ xLog; } ;


 int SQLITE_CORRUPT ;
 TYPE_1__ sqlite3GlobalConfig ;
 int sqlite3ReportError (int ,int,char*) ;
 int testcase (int) ;

int sqlite3CorruptError(int lineno){
  testcase( sqlite3GlobalConfig.xLog!=0 );
  return sqlite3ReportError(SQLITE_CORRUPT, lineno, "database corruption");
}
