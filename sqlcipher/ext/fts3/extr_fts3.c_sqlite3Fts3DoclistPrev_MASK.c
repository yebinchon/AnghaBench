#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ sqlite3_int64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char**,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__*) ; 

void FUNC5(
  int bDescIdx,                   /* True if the doclist is desc */
  char *aDoclist,                 /* Pointer to entire doclist */
  int nDoclist,                   /* Length of aDoclist in bytes */
  char **ppIter,                  /* IN/OUT: Iterator pointer */
  sqlite3_int64 *piDocid,         /* IN/OUT: Docid pointer */
  int *pnList,                    /* OUT: List length pointer */
  u8 *pbEof                       /* OUT: End-of-file flag */
){
  char *p = *ppIter;

  FUNC0( nDoclist>0 );
  FUNC0( *pbEof==0 );
  FUNC0( p || *piDocid==0 );
  FUNC0( !p || (p>aDoclist && p<&aDoclist[nDoclist]) );

  if( p==0 ){
    sqlite3_int64 iDocid = 0;
    char *pNext = 0;
    char *pDocid = aDoclist;
    char *pEnd = &aDoclist[nDoclist];
    int iMul = 1;

    while( pDocid<pEnd ){
      sqlite3_int64 iDelta;
      pDocid += FUNC4(pDocid, &iDelta);
      iDocid += (iMul * iDelta);
      pNext = pDocid;
      FUNC2(0, &pDocid);
      while( pDocid<pEnd && *pDocid==0 ) pDocid++;
      iMul = (bDescIdx ? -1 : 1);
    }

    *pnList = (int)(pEnd - pNext);
    *ppIter = pNext;
    *piDocid = iDocid;
  }else{
    int iMul = (bDescIdx ? -1 : 1);
    sqlite3_int64 iDelta;
    FUNC1(&p, aDoclist, &iDelta);
    *piDocid -= (iMul * iDelta);

    if( p==aDoclist ){
      *pbEof = 1;
    }else{
      char *pSave = p;
      FUNC3(aDoclist, &p);
      *pnList = (int)(pSave - p);
    }
    *ppIter = p;
  }
}