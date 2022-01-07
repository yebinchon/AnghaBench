
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ sqlite3_int64 ;
typedef int sqlite3_file ;
struct TYPE_3__ {TYPE_2__* pVFile; } ;
typedef TYPE_1__ VHandle ;
struct TYPE_4__ {scalar_t__ sz; } ;
typedef TYPE_2__ VFile ;


 int SQLITE_OK ;

__attribute__((used)) static int inmemTruncate(sqlite3_file *pFile, sqlite3_int64 iSize){
  VHandle *pHandle = (VHandle*)pFile;
  VFile *pVFile = pHandle->pVFile;
  if( pVFile->sz>iSize && iSize>=0 ) pVFile->sz = (int)iSize;
  return SQLITE_OK;
}
