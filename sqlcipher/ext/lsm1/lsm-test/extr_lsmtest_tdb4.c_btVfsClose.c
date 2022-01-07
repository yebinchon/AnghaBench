
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bt_file ;
struct TYPE_9__ {TYPE_2__** apFile; } ;
struct TYPE_8__ {TYPE_3__* pBt; int pFile; TYPE_1__* pVfs; struct TYPE_8__* apSector; } ;
struct TYPE_7__ {int (* xClose ) (int ) ;} ;
typedef TYPE_2__ BtFile ;
typedef TYPE_3__ BtDb ;


 int btDeref (TYPE_3__*) ;
 int btFlushSectors (TYPE_2__*,int ) ;
 int stub1 (int ) ;
 int testFree (TYPE_2__*) ;

__attribute__((used)) static int btVfsClose(bt_file *pFile){
  BtFile *p = (BtFile*)pFile;
  BtDb *pBt = p->pBt;
  int rc;
  if( pBt ){
    btFlushSectors(p, 0);
    if( p==pBt->apFile[0] ) pBt->apFile[0] = 0;
    if( p==pBt->apFile[1] ) pBt->apFile[1] = 0;
  }
  testFree(p->apSector);
  rc = p->pVfs->xClose(p->pFile);



  testFree(p);
  return rc;
}
