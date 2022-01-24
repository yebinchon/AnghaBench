#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqlite_int64 ;
struct TYPE_4__ {char* pData; int nData; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef  TYPE_2__ InteriorBlock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int*) ; 

__attribute__((used)) static void FUNC3(InteriorBlock *pBlock){
  const char *pData = pBlock->data.pData;
  int nData = pBlock->data.nData;
  int n, iDummy;
  sqlite_int64 iBlockid;

  FUNC0( nData>0 );
  FUNC0( pData!=0 );
  FUNC0( pData+nData>pData );

  /* Must lead with height of node as a varint(n), n>0 */
  n = FUNC2(pData, &iDummy);
  FUNC0( n>0 );
  FUNC0( iDummy>0 );
  FUNC0( n<nData );
  pData += n;
  nData -= n;

  /* Must contain iBlockid. */
  n = FUNC1(pData, &iBlockid);
  FUNC0( n>0 );
  FUNC0( n<=nData );
  pData += n;
  nData -= n;

  /* Zero or more terms of positive length */
  if( nData!=0 ){
    /* First term is not delta-encoded. */
    n = FUNC2(pData, &iDummy);
    FUNC0( n>0 );
    FUNC0( iDummy>0 );
    FUNC0( n+iDummy>0);
    FUNC0( n+iDummy<=nData );
    pData += n+iDummy;
    nData -= n+iDummy;

    /* Following terms delta-encoded. */
    while( nData!=0 ){
      /* Length of shared prefix. */
      n = FUNC2(pData, &iDummy);
      FUNC0( n>0 );
      FUNC0( iDummy>=0 );
      FUNC0( n<nData );
      pData += n;
      nData -= n;

      /* Length and data of distinct suffix. */
      n = FUNC2(pData, &iDummy);
      FUNC0( n>0 );
      FUNC0( iDummy>0 );
      FUNC0( n+iDummy>0);
      FUNC0( n+iDummy<=nData );
      pData += n+iDummy;
      nData -= n+iDummy;
    }
  }
}