
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef char u8 ;
struct TYPE_13__ {int pFS; int pEnv; } ;
typedef TYPE_1__ lsm_db ;
struct TYPE_15__ {int member_2; int member_1; int member_0; } ;
struct TYPE_14__ {int z; } ;
typedef int Segment ;
typedef int Page ;
typedef TYPE_2__ LsmString ;
typedef int LsmPgno ;
typedef TYPE_3__ LsmBlob ;


 int LSM_OK ;
 int SEGMENT_BTREE_FLAG ;
 int assert (int) ;
 char* fsPageData (int *,int*) ;
 scalar_t__ isalnum (char) ;
 int lsmFsDbPageGet (int ,int *,int ,int **) ;
 int lsmFsPageNumber (int *) ;
 int lsmFsPageRelease (int *) ;
 int lsmLogMessage (TYPE_1__*,int ,char*,int ,int ) ;
 int lsmStringAppend (TYPE_2__*,char*,int) ;
 int lsmStringAppendf (TYPE_2__*,char*,...) ;
 int lsmStringClear (TYPE_2__*) ;
 int lsmStringInit (TYPE_2__*,int ) ;
 int lsmVarintGet32 (char*,int*) ;
 int lsmVarintGet64 (char*,int *) ;
 char* pageGetCell (char*,int,int) ;
 int pageGetFlags (char*,int) ;
 char* pageGetKey (int *,int *,int ,int*,int*,TYPE_3__*) ;
 int pageGetNRec (char*,int) ;
 scalar_t__ pageGetPtr (char*,int) ;
 scalar_t__ rtIsWrite (int) ;
 int sortedBlobFree (TYPE_3__*) ;
 int sortedReadData (int ,int *,int,int,void**,TYPE_3__*) ;

void sortedDumpPage(lsm_db *pDb, Segment *pRun, Page *pPg, int bVals){
  LsmBlob blob = {0, 0, 0};
  LsmString s;
  int i;

  int nRec;
  int iPtr;
  int flags;
  u8 *aData;
  int nData;

  aData = fsPageData(pPg, &nData);

  nRec = pageGetNRec(aData, nData);
  iPtr = (int)pageGetPtr(aData, nData);
  flags = pageGetFlags(aData, nData);

  lsmStringInit(&s, pDb->pEnv);
  lsmStringAppendf(&s,"nCell=%d iPtr=%d flags=%d {", nRec, iPtr, flags);
  if( flags&SEGMENT_BTREE_FLAG ) iPtr = 0;

  for(i=0; i<nRec; i++){
    Page *pRef = 0;
    int iChar;
    u8 *aKey; int nKey = 0;
    u8 *aVal = 0; int nVal = 0;
    int iTopic;
    u8 *aCell;
    int iPgPtr;
    int eType;

    aCell = pageGetCell(aData, nData, i);
    eType = *aCell++;
    assert( (flags & SEGMENT_BTREE_FLAG) || eType!=0 );
    aCell += lsmVarintGet32(aCell, &iPgPtr);

    if( eType==0 ){
      LsmPgno iRef;
      aCell += lsmVarintGet64(aCell, &iRef);
      lsmFsDbPageGet(pDb->pFS, pRun, iRef, &pRef);
      aKey = pageGetKey(pRun, pRef, 0, &iTopic, &nKey, &blob);
    }else{
      aCell += lsmVarintGet32(aCell, &nKey);
      if( rtIsWrite(eType) ) aCell += lsmVarintGet32(aCell, &nVal);
      sortedReadData(0, pPg, (aCell-aData), nKey+nVal, (void **)&aKey, &blob);
      aVal = &aKey[nKey];
      iTopic = eType;
    }

    lsmStringAppendf(&s, "%s%2X:", (i==0?"":" "), iTopic);
    for(iChar=0; iChar<nKey; iChar++){
      lsmStringAppendf(&s, "%c", isalnum(aKey[iChar]) ? aKey[iChar] : '.');
    }
    if( nVal>0 && bVals ){
      lsmStringAppendf(&s, "##");
      for(iChar=0; iChar<nVal; iChar++){
        lsmStringAppendf(&s, "%c", isalnum(aVal[iChar]) ? aVal[iChar] : '.');
      }
    }

    lsmStringAppendf(&s, " %d", iPgPtr+iPtr);
    lsmFsPageRelease(pRef);
  }
  lsmStringAppend(&s, "}", 1);

  lsmLogMessage(pDb, LSM_OK, "      Page %d: %s", lsmFsPageNumber(pPg), s.z);
  lsmStringClear(&s);

  sortedBlobFree(&blob);
}
