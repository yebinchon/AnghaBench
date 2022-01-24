#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int eState; int /*<<< orphan*/  pBuf; int /*<<< orphan*/  pColset; } ;
typedef  TYPE_1__ PoslistCallbackCtx ;
typedef  int /*<<< orphan*/  Fts5Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int const*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(
  Fts5Index *pUnused,
  void *pContext, 
  const u8 *pChunk, int nChunk
){
  PoslistCallbackCtx *pCtx = (PoslistCallbackCtx*)pContext;
  FUNC0(pUnused);
  FUNC1( nChunk>=0 );
  if( nChunk>0 ){
    /* Search through to find the first varint with value 1. This is the
    ** start of the next columns hits. */
    int i = 0;
    int iStart = 0;

    if( pCtx->eState==2 ){
      int iCol;
      FUNC4(pChunk, i, iCol);
      if( FUNC5(pCtx->pColset, iCol) ){
        pCtx->eState = 1;
        FUNC3(pCtx->pBuf, 1);
      }else{
        pCtx->eState = 0;
      }
    }

    do {
      while( i<nChunk && pChunk[i]!=0x01 ){
        while( pChunk[i] & 0x80 ) i++;
        i++;
      }
      if( pCtx->eState ){
        FUNC2(pCtx->pBuf, &pChunk[iStart], i-iStart);
      }
      if( i<nChunk ){
        int iCol;
        iStart = i;
        i++;
        if( i>=nChunk ){
          pCtx->eState = 2;
        }else{
          FUNC4(pChunk, i, iCol);
          pCtx->eState = FUNC5(pCtx->pColset, iCol);
          if( pCtx->eState ){
            FUNC2(pCtx->pBuf, &pChunk[iStart], i-iStart);
            iStart = i;
          }
        }
      }
    }while( i<nChunk );
  }
}