
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pPg; scalar_t__ pSeg; } ;
typedef TYPE_1__ SegmentPtr ;
typedef int Page ;


 int LSM_OK ;
 int assert (int) ;
 int lsmFsDbPageNext (scalar_t__,int,int,int **) ;
 int segmentPtrSetPage (TYPE_1__*,int *) ;

__attribute__((used)) static int segmentPtrNextPage(
  SegmentPtr *pPtr,
  int eDir
){
  Page *pNext;
  int rc;

  assert( eDir==1 || eDir==-1 );
  assert( pPtr->pPg );
  assert( pPtr->pSeg || eDir>0 );

  rc = lsmFsDbPageNext(pPtr->pSeg, pPtr->pPg, eDir, &pNext);
  assert( rc==LSM_OK || pNext==0 );
  segmentPtrSetPage(pPtr, pNext);
  return rc;
}
