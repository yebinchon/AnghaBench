
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ i64 ;
typedef int aMagic ;
struct TYPE_6__ {scalar_t__ journalOff; scalar_t__ journalHdr; int cksumInit; int pageSize; int sectorSize; int jfd; } ;
typedef TYPE_1__ Pager ;


 scalar_t__ JOURNAL_HDR_SZ (TYPE_1__*) ;
 int MAX_SECTOR_SIZE ;
 int SQLITE_DONE ;
 int SQLITE_MAX_PAGE_SIZE ;
 int SQLITE_OK ;
 int aJournalMagic ;
 int assert (int ) ;
 int isOpen (int ) ;
 scalar_t__ journalHdrOffset (TYPE_1__*) ;
 scalar_t__ memcmp (unsigned char*,int ,int) ;
 int read32bits (int ,scalar_t__,int*) ;
 int sqlite3OsRead (int ,unsigned char*,int,scalar_t__) ;
 int sqlite3PagerSetPagesize (TYPE_1__*,int*,int) ;
 int testcase (int) ;

__attribute__((used)) static int readJournalHdr(
  Pager *pPager,
  int isHot,
  i64 journalSize,
  u32 *pNRec,
  u32 *pDbSize
){
  int rc;
  unsigned char aMagic[8];
  i64 iHdrOff;

  assert( isOpen(pPager->jfd) );





  pPager->journalOff = journalHdrOffset(pPager);
  if( pPager->journalOff+JOURNAL_HDR_SZ(pPager) > journalSize ){
    return SQLITE_DONE;
  }
  iHdrOff = pPager->journalOff;






  if( isHot || iHdrOff!=pPager->journalHdr ){
    rc = sqlite3OsRead(pPager->jfd, aMagic, sizeof(aMagic), iHdrOff);
    if( rc ){
      return rc;
    }
    if( memcmp(aMagic, aJournalMagic, sizeof(aMagic))!=0 ){
      return SQLITE_DONE;
    }
  }





  if( SQLITE_OK!=(rc = read32bits(pPager->jfd, iHdrOff+8, pNRec))
   || SQLITE_OK!=(rc = read32bits(pPager->jfd, iHdrOff+12, &pPager->cksumInit))
   || SQLITE_OK!=(rc = read32bits(pPager->jfd, iHdrOff+16, pDbSize))
  ){
    return rc;
  }

  if( pPager->journalOff==0 ){
    u32 iPageSize;
    u32 iSectorSize;


    if( SQLITE_OK!=(rc = read32bits(pPager->jfd, iHdrOff+20, &iSectorSize))
     || SQLITE_OK!=(rc = read32bits(pPager->jfd, iHdrOff+24, &iPageSize))
    ){
      return rc;
    }





    if( iPageSize==0 ){
      iPageSize = pPager->pageSize;
    }






    if( iPageSize<512 || iSectorSize<32
     || iPageSize>SQLITE_MAX_PAGE_SIZE || iSectorSize>MAX_SECTOR_SIZE
     || ((iPageSize-1)&iPageSize)!=0 || ((iSectorSize-1)&iSectorSize)!=0
    ){





      return SQLITE_DONE;
    }





    rc = sqlite3PagerSetPagesize(pPager, &iPageSize, -1);
    testcase( rc!=SQLITE_OK );







    pPager->sectorSize = iSectorSize;
  }

  pPager->journalOff += JOURNAL_HDR_SZ(pPager);
  return rc;
}
