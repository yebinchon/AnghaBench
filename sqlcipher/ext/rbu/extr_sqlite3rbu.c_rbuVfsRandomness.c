
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* xRandomness ) (TYPE_1__*,int,char*) ;} ;
typedef TYPE_1__ sqlite3_vfs ;
struct TYPE_6__ {TYPE_1__* pRealVfs; } ;
typedef TYPE_2__ rbu_vfs ;


 int stub1 (TYPE_1__*,int,char*) ;

__attribute__((used)) static int rbuVfsRandomness(sqlite3_vfs *pVfs, int nByte, char *zBufOut){
  sqlite3_vfs *pRealVfs = ((rbu_vfs*)pVfs)->pRealVfs;
  return pRealVfs->xRandomness(pRealVfs, nByte, zBufOut);
}
