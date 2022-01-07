
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite_int64 ;
typedef int sqlite3_file ;
struct TYPE_2__ {int fd; } ;
typedef TYPE_1__ DemoFile ;


 int SQLITE_IOERR_TRUNCATE ;
 int SQLITE_OK ;
 scalar_t__ ftruncate (int ,int ) ;

__attribute__((used)) static int demoTruncate(sqlite3_file *pFile, sqlite_int64 size){



  return SQLITE_OK;
}
