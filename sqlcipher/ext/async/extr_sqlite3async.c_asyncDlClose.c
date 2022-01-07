
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* xDlClose ) (TYPE_1__*,void*) ;scalar_t__ pAppData; } ;
typedef TYPE_1__ sqlite3_vfs ;


 int stub1 (TYPE_1__*,void*) ;

__attribute__((used)) static void asyncDlClose(sqlite3_vfs *pAsyncVfs, void *pHandle){
  sqlite3_vfs *pVfs = (sqlite3_vfs *)pAsyncVfs->pAppData;
  pVfs->xDlClose(pVfs, pHandle);
}
