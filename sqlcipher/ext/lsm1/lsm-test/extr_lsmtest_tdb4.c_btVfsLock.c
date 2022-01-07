
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bt_file ;
struct TYPE_6__ {int pFile; TYPE_2__* pVfs; TYPE_1__* pBt; } ;
struct TYPE_5__ {int (* xLock ) (int ,int,int) ;} ;
struct TYPE_4__ {scalar_t__ bCrash; } ;
typedef TYPE_3__ BtFile ;


 int SQLITE4_IOERR ;
 int stub1 (int ,int,int) ;

__attribute__((used)) static int btVfsLock(bt_file *pFile, int iLock, int eType){
  BtFile *p = (BtFile*)pFile;
  if( p->pBt && p->pBt->bCrash ) return SQLITE4_IOERR;
  return p->pVfs->xLock(p->pFile, iLock, eType);
}
