
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_6__ {scalar_t__ bPatchset; int nGroup; int nChange; int nUpdate; TYPE_1__** apGroup; } ;
struct TYPE_5__ {scalar_t__* aChange; int szChange; int nChange; } ;
typedef TYPE_1__ FuzzChangesetGroup ;
typedef TYPE_2__ FuzzChangeset ;


 scalar_t__ SQLITE_DELETE ;
 scalar_t__ SQLITE_INSERT ;
 int SQLITE_OK ;
 scalar_t__ SQLITE_UPDATE ;
 int fuzzCorrupt () ;
 int fuzzParseRecord (scalar_t__**,scalar_t__*,TYPE_2__*,int) ;

__attribute__((used)) static int fuzzParseChanges(u8 **ppData, u8 *pEnd, FuzzChangeset *pParse){
  u8 cHdr = (pParse->bPatchset ? 'P' : 'T');
  FuzzChangesetGroup *pGrp = pParse->apGroup[pParse->nGroup-1];
  int rc = SQLITE_OK;
  u8 *p = *ppData;

  pGrp->aChange = p;
  while( rc==SQLITE_OK && p<pEnd && p[0]!=cHdr ){
    u8 eOp = p[0];
    u8 bIndirect = p[1];

    p += 2;
    if( eOp==SQLITE_UPDATE ){
      pParse->nUpdate++;
      if( pParse->bPatchset==0 ){
        rc = fuzzParseRecord(&p, pEnd, pParse, 0);
      }
    }else if( eOp!=SQLITE_INSERT && eOp!=SQLITE_DELETE ){
      rc = fuzzCorrupt();
    }
    if( rc==SQLITE_OK ){
      int bPkOnly = (eOp==SQLITE_DELETE && pParse->bPatchset);
      rc = fuzzParseRecord(&p, pEnd, pParse, bPkOnly);
    }
    pGrp->nChange++;
    pParse->nChange++;
  }
  pGrp->szChange = p - pGrp->aChange;

  *ppData = p;
  return rc;
}
