
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zAlloc; } ;
typedef TYPE_1__ tmp_file ;
typedef int sqlite3_file ;


 int SQLITE_OK ;
 int sqlite3_free (int ) ;

__attribute__((used)) static int tmpClose(sqlite3_file *pFile){
  tmp_file *pTmp = (tmp_file *)pFile;
  sqlite3_free(pTmp->zAlloc);
  return SQLITE_OK;
}
