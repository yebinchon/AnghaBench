
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sqlite3_int64 ;
typedef int sqlite3_file ;
struct TYPE_4__ {TYPE_1__* pVFile; } ;
typedef TYPE_2__ VHandle ;
struct TYPE_3__ {int sz; } ;


 int SQLITE_OK ;

__attribute__((used)) static int inmemFileSize(sqlite3_file *pFile, sqlite3_int64 *pSize){
  *pSize = ((VHandle*)pFile)->pVFile->sz;
  return SQLITE_OK;
}
