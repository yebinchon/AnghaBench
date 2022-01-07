
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {scalar_t__ nSize; scalar_t__ iFirst; scalar_t__ iLastPg; } ;
typedef TYPE_1__ Segment ;
typedef int FileSystem ;


 int INTEGRITY_CHECK_FIRST_PG ;
 int INTEGRITY_CHECK_LAST_PG ;
 int INTEGRITY_CHECK_USED ;
 int LSM_OK ;
 int assert (int) ;
 int fsBlockNext (int *,TYPE_1__*,int,int*) ;
 scalar_t__ fsFirstPageOnBlock (int *,int) ;
 scalar_t__ fsLastPageOnBlock (int *,int) ;
 int fsPageToBlock (int *,scalar_t__) ;
 scalar_t__ fsSegmentRedirects (int *,TYPE_1__*) ;

__attribute__((used)) static void checkBlocks(
  FileSystem *pFS,
  Segment *pSeg,
  int bExtra,
  int nUsed,
  u8 *aUsed
){
  if( pSeg ){
    if( pSeg && pSeg->nSize>0 ){
      int rc;
      int iBlk;
      int iLastBlk;
      int iFirstBlk;
      int bLastIsLastOnBlock;

      assert( 0==fsSegmentRedirects(pFS, pSeg) );
      iBlk = iFirstBlk = fsPageToBlock(pFS, pSeg->iFirst);
      iLastBlk = fsPageToBlock(pFS, pSeg->iLastPg);

      bLastIsLastOnBlock = (fsLastPageOnBlock(pFS, iLastBlk)==pSeg->iLastPg);
      assert( iBlk>0 );

      do {

        aUsed[iBlk-1] |= INTEGRITY_CHECK_USED;




        if( fsFirstPageOnBlock(pFS, iBlk)==pSeg->iFirst || iBlk!=iFirstBlk ){
          assert( (aUsed[iBlk-1] & INTEGRITY_CHECK_FIRST_PG)==0 );
          aUsed[iBlk-1] |= INTEGRITY_CHECK_FIRST_PG;
        }



        if( iBlk!=iLastBlk || bLastIsLastOnBlock ){
          assert( (aUsed[iBlk-1] & INTEGRITY_CHECK_LAST_PG)==0 );
          aUsed[iBlk-1] |= INTEGRITY_CHECK_LAST_PG;
        }





        if( iBlk==iLastBlk && bLastIsLastOnBlock && bExtra ){
          int iExtra = 0;
          rc = fsBlockNext(pFS, pSeg, iBlk, &iExtra);
          assert( rc==LSM_OK );

          assert( aUsed[iExtra-1]==0 );
          aUsed[iExtra-1] |= INTEGRITY_CHECK_USED;
          aUsed[iExtra-1] |= INTEGRITY_CHECK_FIRST_PG;
          aUsed[iExtra-1] |= INTEGRITY_CHECK_LAST_PG;
        }




        if( iBlk==iLastBlk ){
          iBlk = 0;
        }else{
          rc = fsBlockNext(pFS, pSeg, iBlk, &iBlk);
          assert( rc==LSM_OK );
        }
      }while( iBlk );
    }
  }
}
