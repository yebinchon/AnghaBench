
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int sqlite4_int64 ;
typedef int bt_file ;
struct TYPE_7__ {int pFile; TYPE_2__* pVfs; TYPE_1__* pBt; } ;
struct TYPE_6__ {int (* xWrite ) (int ,int ,void*,int) ;} ;
struct TYPE_5__ {scalar_t__ nCrashSync; scalar_t__ bCrash; } ;
typedef TYPE_3__ BtFile ;


 int SQLITE4_IOERR ;
 int btSaveSectors (TYPE_3__*,int ,int) ;
 int stub1 (int ,int ,void*,int) ;

__attribute__((used)) static int btVfsWrite(bt_file *pFile, sqlite4_int64 iOff, void *pBuf, int nBuf){
  BtFile *p = (BtFile*)pFile;
  if( p->pBt && p->pBt->bCrash ) return SQLITE4_IOERR;
  if( p->pBt && p->pBt->nCrashSync ){
    btSaveSectors(p, iOff, nBuf);
  }
  return p->pVfs->xWrite(p->pFile, iOff, pBuf, nBuf);
}
