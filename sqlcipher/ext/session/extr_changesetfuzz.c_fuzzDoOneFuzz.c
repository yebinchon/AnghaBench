
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_11__ {int iGroup; scalar_t__ eType; size_t iDelete; } ;
struct TYPE_10__ {int nGroup; scalar_t__ bPatchset; TYPE_1__** apGroup; } ;
struct TYPE_9__ {int* aChange; int nCol; int* aPK; int nChange; int zTab; } ;
typedef TYPE_1__ FuzzChangesetGroup ;
typedef TYPE_2__ FuzzChangeset ;
typedef TYPE_3__ FuzzChange ;


 scalar_t__ FUZZ_COLUMN_ADD ;
 scalar_t__ FUZZ_COLUMN_ADDPK ;
 scalar_t__ FUZZ_COLUMN_DEL ;
 scalar_t__ FUZZ_GROUP_DEL ;
 scalar_t__ FUZZ_GROUP_DUP ;
 int SQLITE_OK ;
 int fuzzCopyChange (TYPE_2__*,int,TYPE_3__*,int**,int**) ;
 int fuzzPutVarint (int*,int) ;
 int fuzzSelectChange (TYPE_2__*,TYPE_3__*) ;
 int fuzzWriteFile (char const*,int*,int) ;
 int memcpy (int*,int ,int) ;
 int strlen (int ) ;

__attribute__((used)) static int fuzzDoOneFuzz(
  const char *zOut,
  u8 *pBuf,
  FuzzChangeset *pParse
){
  FuzzChange change;
  int iGrp;
  int rc = -1;

  while( rc<0 ){
    u8 *pOut = pBuf;
    rc = fuzzSelectChange(pParse, &change);
    for(iGrp=0; rc==SQLITE_OK && iGrp<pParse->nGroup; iGrp++){
      FuzzChangesetGroup *pGrp = pParse->apGroup[iGrp];
      int nTab = strlen(pGrp->zTab) + 1;
      int j;
      int nRep = 1;







      if( change.iGroup==iGrp ){
        if( change.eType==FUZZ_GROUP_DEL ){
          if( pParse->nGroup==1 ) rc = -1;
          continue;
        }
        else if( change.eType==FUZZ_GROUP_DUP ){
          nRep = 2;
        }
      }

      for(j=0; j<nRep; j++){
        int i;
        u8 *pSaved;
        u8 *p = pGrp->aChange;
        int nCol = pGrp->nCol;
        int iPKDel = 0;
        if( iGrp==change.iGroup ){
          if( change.eType==FUZZ_COLUMN_ADD
           || change.eType==FUZZ_COLUMN_ADDPK
          ){
            nCol++;
          }else if( change.eType==FUZZ_COLUMN_DEL ){
            nCol--;
            iPKDel = pGrp->aPK[change.iDelete];
          }
        }


        pOut++[0] = pParse->bPatchset ? 'P' : 'T';
        pOut += fuzzPutVarint(pOut, nCol);

        for(i=0; i<pGrp->nCol; i++){
          if( iGrp!=change.iGroup || i!=change.iDelete ){
            u8 v = pGrp->aPK[i];
            if( iPKDel && v>iPKDel ) v--;
            *(pOut++) = v;
          }
        }
        if( nCol>pGrp->nCol ){
          if( change.eType==FUZZ_COLUMN_ADD ){
            *(pOut++) = 0x00;
          }else{
            u8 max = 0;
            for(i=0; i<pGrp->nCol; i++){
              if( pGrp->aPK[i]>max ) max = pGrp->aPK[i];
            }
            *(pOut++) = max+1;
          }
        }
        memcpy(pOut, pGrp->zTab, nTab);
        pOut += nTab;


        pSaved = pOut;
        for(i=0; rc==SQLITE_OK && i<pGrp->nChange; i++){
          rc = fuzzCopyChange(pParse, iGrp, &change, &p, &pOut);
        }
        if( pOut==pSaved ) rc = -1;
      }
    }
    if( rc==SQLITE_OK ){
      fuzzWriteFile(zOut, pBuf, pOut-pBuf);
    }
  }

  return rc;
}
