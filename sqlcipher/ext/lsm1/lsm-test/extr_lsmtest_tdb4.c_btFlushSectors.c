
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int sqlite4_int64 ;
struct TYPE_7__ {int nSector; int nSectorSize; int ** apSector; int pFile; TYPE_2__* pBt; } ;
struct TYPE_6__ {TYPE_1__* pVfs; scalar_t__ bCrash; } ;
struct TYPE_5__ {int (* xSize ) (int ,int*) ;int (* xWrite ) (int ,int,int *,int) ;} ;
typedef TYPE_3__ BtFile ;


 int MIN (int,int) ;
 int SQLITE4_OK ;
 int fflush (int ) ;
 int fprintf (int ,char*,int,char*,char*) ;
 int stderr ;
 int stub1 (int ,int*) ;
 int stub2 (int ,int,int *,int) ;
 int testFree (int *) ;
 int * testMalloc (int) ;
 int testPrngArray (int,int *,int) ;
 int testPrngValue (int) ;

__attribute__((used)) static int btFlushSectors(BtFile *p, int iFile){
  sqlite4_int64 iSz;
  int rc;
  int i;
  u8 *aTmp = 0;

  rc = p->pBt->pVfs->xSize(p->pFile, &iSz);
  for(i=0; rc==SQLITE4_OK && i<p->nSector; i++){
    if( p->pBt->bCrash && p->apSector[i] ){
      sqlite4_int64 iSOff = p->nSectorSize*i;
      int nWrite = MIN(p->nSectorSize, iSz - iSOff);

      if( nWrite ){
        u8 *aWrite = 0;
        int iOpt = (testPrngValue(i) % 3) + 1;
        if( iOpt==1 ){
          aWrite = p->apSector[i];
        }else if( iOpt==3 ){
          if( aTmp==0 ) aTmp = testMalloc(p->nSectorSize);
          aWrite = aTmp;
          testPrngArray(i*13, (u32*)aWrite, nWrite/sizeof(u32));
        }
        if( aWrite ){
          rc = p->pBt->pVfs->xWrite(p->pFile, iSOff, aWrite, nWrite);
        }
      }
    }
    testFree(p->apSector[i]);
    p->apSector[i] = 0;
  }

  testFree(aTmp);
  return rc;
}
