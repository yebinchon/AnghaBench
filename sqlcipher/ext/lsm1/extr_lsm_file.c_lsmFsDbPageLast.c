
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ pCompress; } ;
struct TYPE_9__ {int iLastPg; } ;
typedef TYPE_1__ Segment ;
typedef int Page ;
typedef int LsmPgno ;
typedef TYPE_2__ FileSystem ;


 int LSM_OK ;
 int fsGetPageBefore (TYPE_2__*,TYPE_1__*,int ,int *) ;
 int fsPageGet (TYPE_2__*,TYPE_1__*,int ,int ,int **,int*) ;

int lsmFsDbPageLast(FileSystem *pFS, Segment *pSeg, Page **ppPg){
  int rc;
  LsmPgno iPg = pSeg->iLastPg;
  if( pFS->pCompress ){
    int nSpace;
    iPg++;
    do {
      nSpace = 0;
      rc = fsGetPageBefore(pFS, pSeg, iPg, &iPg);
      if( rc==LSM_OK ){
        rc = fsPageGet(pFS, pSeg, iPg, 0, ppPg, &nSpace);
      }
    }while( rc==LSM_OK && nSpace>0 );

  }else{
    rc = fsPageGet(pFS, pSeg, iPg, 0, ppPg, 0);
  }
  return rc;
}
