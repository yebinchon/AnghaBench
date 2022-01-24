#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* pData; int nData; int /*<<< orphan*/  term; int /*<<< orphan*/  iBlockid; } ;
typedef  TYPE_1__ InteriorReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int*) ; 

__attribute__((used)) static void FUNC6(const char *pData, int nData,
                               InteriorReader *pReader){
  int n, nTerm;

  /* Require at least the leading flag byte */
  FUNC1( nData>0 );
  FUNC1( pData[0]!='\0' );

  FUNC0(pReader);

  /* Decode the base blockid, and set the cursor to the first term. */
  n = FUNC4(pData+1, &pReader->iBlockid);
  FUNC1( 1+n<=nData );
  pReader->pData = pData+1+n;
  pReader->nData = nData-(1+n);

  /* A single-child interior node (such as when a leaf node was too
  ** large for the segment directory) won't have any terms.
  ** Otherwise, decode the first term.
  */
  if( pReader->nData==0 ){
    FUNC2(&pReader->term, 0);
  }else{
    n = FUNC5(pReader->pData, &nTerm);
    FUNC2(&pReader->term, nTerm);
    FUNC3(&pReader->term, pReader->pData+n, nTerm);
    FUNC1( n+nTerm<=pReader->nData );
    pReader->pData += n+nTerm;
    pReader->nData -= n+nTerm;
  }
}