
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int iFirst; } ;
struct TYPE_7__ {TYPE_2__* pSeg; } ;
typedef TYPE_1__ SegmentPtr ;
typedef TYPE_2__ Segment ;
typedef int Page ;
typedef int FileSystem ;


 int LSM_OK ;
 int lsmFsDbPageGet (int *,TYPE_2__*,int ,int **) ;
 int lsmFsDbPageLast (int *,TYPE_2__*,int **) ;
 int segmentPtrSetPage (TYPE_1__*,int *) ;

__attribute__((used)) static void segmentPtrEndPage(
  FileSystem *pFS,
  SegmentPtr *pPtr,
  int bLast,
  int *pRc
){
  if( *pRc==LSM_OK ){
    Segment *pSeg = pPtr->pSeg;
    Page *pNew = 0;
    if( bLast ){
      *pRc = lsmFsDbPageLast(pFS, pSeg, &pNew);
    }else{
      *pRc = lsmFsDbPageGet(pFS, pSeg, pSeg->iFirst, &pNew);
    }
    segmentPtrSetPage(pPtr, pNew);
  }
}
