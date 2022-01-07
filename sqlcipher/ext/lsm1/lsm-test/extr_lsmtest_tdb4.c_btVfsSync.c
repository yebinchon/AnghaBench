
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bt_file ;
struct TYPE_7__ {int bCrash; scalar_t__ nCrashSync; TYPE_2__** apFile; } ;
struct TYPE_6__ {int pFile; TYPE_1__* pVfs; TYPE_3__* pBt; } ;
struct TYPE_5__ {int (* xSync ) (int ) ;} ;
typedef TYPE_2__ BtFile ;
typedef TYPE_3__ BtDb ;


 int SQLITE4_IOERR ;
 int SQLITE4_OK ;
 int btFlushSectors (TYPE_2__*,int) ;
 int stub1 (int ) ;

__attribute__((used)) static int btVfsSync(bt_file *pFile){
  int rc = SQLITE4_OK;
  BtFile *p = (BtFile*)pFile;
  BtDb *pBt = p->pBt;

  if( pBt ){
    if( pBt->bCrash ) return SQLITE4_IOERR;
    if( pBt->nCrashSync ){
      pBt->nCrashSync--;
      pBt->bCrash = (pBt->nCrashSync==0);
      if( pBt->bCrash ){
        btFlushSectors(pBt->apFile[0], 0);
        btFlushSectors(pBt->apFile[1], 1);
        rc = SQLITE4_IOERR;
      }else{
        btFlushSectors(p, 0);
      }
    }
  }

  if( rc==SQLITE4_OK ){
    rc = p->pVfs->xSync(p->pFile);
  }
  return rc;
}
