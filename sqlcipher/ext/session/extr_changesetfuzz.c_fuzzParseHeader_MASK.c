#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_7__ {scalar_t__ bPatchset; } ;
struct TYPE_6__ {scalar_t__* aPK; char const* zTab; int /*<<< orphan*/  nCol; } ;
typedef  TYPE_1__ FuzzChangesetGroup ;
typedef  TYPE_2__ FuzzChangeset ;

/* Variables and functions */
 int SQLITE_NOMEM ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(
  FuzzChangeset *pParse,          /* Changeset parse object */
  u8 **ppHdr,                     /* IN/OUT: Iterator */
  u8 *pEnd,                       /* 1 byte past EOF */
  FuzzChangesetGroup **ppGrp      /* OUT: New change-group object */
){
  int rc = SQLITE_OK;
  FuzzChangesetGroup *pGrp;
  u8 cHdr = (pParse->bPatchset ? 'P' : 'T');

  FUNC0( pEnd>(*ppHdr) );
  pGrp = (FuzzChangesetGroup*)FUNC4(sizeof(FuzzChangesetGroup));
  if( !pGrp ){
    rc = SQLITE_NOMEM;
  }else{
    u8 *p = *ppHdr;
    if( p[0]!=cHdr ){
      rc = FUNC1();
    }else{
      p++;
      p += FUNC3(p, &pGrp->nCol);
      pGrp->aPK = p;
      p += pGrp->nCol;
      pGrp->zTab = (const char*)p;
      p = &p[FUNC5((const char*)p)+1];

      if( p>=pEnd ){
        rc = FUNC1();
      }
    }
    *ppHdr = p;
  }

  if( rc!=SQLITE_OK ){
    FUNC2(pGrp);
    pGrp = 0;
  }

  *ppGrp = pGrp;
  return rc;
}