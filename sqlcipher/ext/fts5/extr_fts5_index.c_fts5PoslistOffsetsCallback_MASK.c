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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int iRead; int iWrite; int /*<<< orphan*/  pBuf; int /*<<< orphan*/  pColset; } ;
typedef  TYPE_1__ PoslistOffsetsCtx ;
typedef  int /*<<< orphan*/  Fts5Index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(
  Fts5Index *pUnused, 
  void *pContext, 
  const u8 *pChunk, int nChunk
){
  PoslistOffsetsCtx *pCtx = (PoslistOffsetsCtx*)pContext;
  FUNC0(pUnused);
  FUNC1( nChunk>=0 );
  if( nChunk>0 ){
    int i = 0;
    while( i<nChunk ){
      int iVal;
      i += FUNC3(&pChunk[i], iVal);
      iVal += pCtx->iRead - 2;
      pCtx->iRead = iVal;
      if( FUNC4(pCtx->pColset, iVal) ){
        FUNC2(pCtx->pBuf, iVal + 2 - pCtx->iWrite);
        pCtx->iWrite = iVal;
      }
    }
  }
}