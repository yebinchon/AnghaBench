
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_file ;
struct TYPE_2__ {int * pData; } ;
typedef int AsyncFileData ;
typedef TYPE_1__ AsyncFile ;


 int ASYNC_SYNC ;
 int addNewAsyncWrite (int *,int ,int ,int,int ) ;

__attribute__((used)) static int asyncSync(sqlite3_file *pFile, int flags){
  AsyncFileData *p = ((AsyncFile *)pFile)->pData;
  return addNewAsyncWrite(p, ASYNC_SYNC, 0, flags, 0);
}
