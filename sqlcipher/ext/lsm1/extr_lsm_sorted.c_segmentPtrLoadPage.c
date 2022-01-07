
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pSeg; } ;
typedef TYPE_1__ SegmentPtr ;
typedef int Page ;
typedef int FileSystem ;


 int LSM_OK ;
 int assert (int) ;
 int lsmFsDbPageGet (int *,int ,int,int **) ;
 int segmentPtrSetPage (TYPE_1__*,int *) ;

__attribute__((used)) static int segmentPtrLoadPage(
  FileSystem *pFS,
  SegmentPtr *pPtr,
  int iNew
){
  Page *pPg = 0;
  int rc;

  rc = lsmFsDbPageGet(pFS, pPtr->pSeg, iNew, &pPg);
  assert( rc==LSM_OK || pPg==0 );
  segmentPtrSetPage(pPtr, pPg);

  return rc;
}
