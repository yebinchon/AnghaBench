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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DL_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char const*,int*) ; 

__attribute__((used)) static void FUNC3(const char *pData, int nData){
  int n, iDummy;

  if( nData==0 ) return;
  FUNC1( nData>0 );
  FUNC1( pData!=0 );
  FUNC1( pData+nData>pData );

  /* Must lead with a varint(0) */
  n = FUNC2(pData, &iDummy);
  FUNC1( iDummy==0 );
  FUNC1( n>0 );
  FUNC1( n<nData );
  pData += n;
  nData -= n;

  /* Leading term length and data must fit in buffer. */
  n = FUNC2(pData, &iDummy);
  FUNC1( n>0 );
  FUNC1( iDummy>0 );
  FUNC1( n+iDummy>0 );
  FUNC1( n+iDummy<nData );
  pData += n+iDummy;
  nData -= n+iDummy;

  /* Leading term's doclist length and data must fit. */
  n = FUNC2(pData, &iDummy);
  FUNC1( n>0 );
  FUNC1( iDummy>0 );
  FUNC1( n+iDummy>0 );
  FUNC1( n+iDummy<=nData );
  FUNC0(DL_DEFAULT, pData+n, iDummy, NULL);
  pData += n+iDummy;
  nData -= n+iDummy;

  /* Verify that trailing terms and doclists also are readable. */
  while( nData!=0 ){
    n = FUNC2(pData, &iDummy);
    FUNC1( n>0 );
    FUNC1( iDummy>=0 );
    FUNC1( n<nData );
    pData += n;
    nData -= n;
    n = FUNC2(pData, &iDummy);
    FUNC1( n>0 );
    FUNC1( iDummy>0 );
    FUNC1( n+iDummy>0 );
    FUNC1( n+iDummy<nData );
    pData += n+iDummy;
    nData -= n+iDummy;

    n = FUNC2(pData, &iDummy);
    FUNC1( n>0 );
    FUNC1( iDummy>0 );
    FUNC1( n+iDummy>0 );
    FUNC1( n+iDummy<=nData );
    FUNC0(DL_DEFAULT, pData+n, iDummy, NULL);
    pData += n+iDummy;
    nData -= n+iDummy;
  }
}