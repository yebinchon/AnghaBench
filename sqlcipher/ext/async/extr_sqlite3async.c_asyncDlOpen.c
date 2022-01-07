
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* (* xDlOpen ) (TYPE_1__*,char const*) ;scalar_t__ pAppData; } ;
typedef TYPE_1__ sqlite3_vfs ;


 void* stub1 (TYPE_1__*,char const*) ;

__attribute__((used)) static void *asyncDlOpen(sqlite3_vfs *pAsyncVfs, const char *zPath){
  sqlite3_vfs *pVfs = (sqlite3_vfs *)pAsyncVfs->pAppData;
  return pVfs->xDlOpen(pVfs, zPath);
}
