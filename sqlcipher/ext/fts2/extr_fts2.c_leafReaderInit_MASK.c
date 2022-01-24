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
struct TYPE_4__ {char const* pData; int nData; int /*<<< orphan*/  term; } ;
typedef  TYPE_1__ LeafReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC4 (char const*,int*) ; 

__attribute__((used)) static void FUNC5(const char *pData, int nData,
                           LeafReader *pReader){
  int nTerm, n;

  FUNC1( nData>0 );
  FUNC1( pData[0]=='\0' );

  FUNC0(pReader);

  /* Read the first term, skipping the header byte. */
  n = FUNC4(pData+1, &nTerm);
  FUNC2(&pReader->term, nTerm);
  FUNC3(&pReader->term, pData+1+n, nTerm);

  /* Position after the first term. */
  FUNC1( 1+n+nTerm<nData );
  pReader->pData = pData+1+n+nTerm;
  pReader->nData = nData-1-n-nTerm;
}