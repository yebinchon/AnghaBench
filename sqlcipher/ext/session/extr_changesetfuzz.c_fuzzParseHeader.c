
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_7__ {scalar_t__ bPatchset; } ;
struct TYPE_6__ {scalar_t__* aPK; char const* zTab; int nCol; } ;
typedef TYPE_1__ FuzzChangesetGroup ;
typedef TYPE_2__ FuzzChangeset ;


 int SQLITE_NOMEM ;
 int SQLITE_OK ;
 int assert (int) ;
 int fuzzCorrupt () ;
 int fuzzFree (TYPE_1__*) ;
 int fuzzGetVarint (scalar_t__*,int *) ;
 scalar_t__ fuzzMalloc (int) ;
 int strlen (char const*) ;

__attribute__((used)) static int fuzzParseHeader(
  FuzzChangeset *pParse,
  u8 **ppHdr,
  u8 *pEnd,
  FuzzChangesetGroup **ppGrp
){
  int rc = SQLITE_OK;
  FuzzChangesetGroup *pGrp;
  u8 cHdr = (pParse->bPatchset ? 'P' : 'T');

  assert( pEnd>(*ppHdr) );
  pGrp = (FuzzChangesetGroup*)fuzzMalloc(sizeof(FuzzChangesetGroup));
  if( !pGrp ){
    rc = SQLITE_NOMEM;
  }else{
    u8 *p = *ppHdr;
    if( p[0]!=cHdr ){
      rc = fuzzCorrupt();
    }else{
      p++;
      p += fuzzGetVarint(p, &pGrp->nCol);
      pGrp->aPK = p;
      p += pGrp->nCol;
      pGrp->zTab = (const char*)p;
      p = &p[strlen((const char*)p)+1];

      if( p>=pEnd ){
        rc = fuzzCorrupt();
      }
    }
    *ppHdr = p;
  }

  if( rc!=SQLITE_OK ){
    fuzzFree(pGrp);
    pGrp = 0;
  }

  *ppGrp = pGrp;
  return rc;
}
