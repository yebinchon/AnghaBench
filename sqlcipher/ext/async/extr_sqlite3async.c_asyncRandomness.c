
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* xRandomness ) (TYPE_1__*,int,char*) ;scalar_t__ pAppData; } ;
typedef TYPE_1__ sqlite3_vfs ;


 int stub1 (TYPE_1__*,int,char*) ;

__attribute__((used)) static int asyncRandomness(sqlite3_vfs *pAsyncVfs, int nByte, char *zBufOut){
  sqlite3_vfs *pVfs = (sqlite3_vfs *)pAsyncVfs->pAppData;
  return pVfs->xRandomness(pVfs, nByte, zBufOut);
}
