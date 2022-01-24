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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  Segment ;
typedef  int /*<<< orphan*/  Page ;
typedef  int /*<<< orphan*/  LsmBlob ;

/* Variables and functions */
 int SEGMENT_BTREE_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,void**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u8 *FUNC9(
  Segment *pSeg,                  /* Segment pPg belongs to */
  Page *pPg,                      /* Page to read from */
  int iCell,                      /* Index of cell on page to read */
  int *piTopic,                   /* OUT: Topic associated with this key */
  int *pnKey,                     /* OUT: Size of key in bytes */
  LsmBlob *pBlob                  /* If required, use this for dynamic memory */
){
  u8 *pKey;
  int nDummy;
  int eType;
  u8 *aData;
  int nData;

  aData = FUNC1(pPg, &nData);

  FUNC0( !(FUNC4(aData, nData) & SEGMENT_BTREE_FLAG) );
  FUNC0( iCell<FUNC5(aData, nData) );

  pKey = FUNC3(aData, nData, iCell);
  eType = *pKey++;
  pKey += FUNC2(pKey, &nDummy);
  pKey += FUNC2(pKey, pnKey);
  if( FUNC6(eType) ){
    pKey += FUNC2(pKey, &nDummy);
  }
  *piTopic = FUNC7(eType);

  FUNC8(pSeg, pPg, pKey-aData, *pnKey, (void **)&pKey, pBlob);
  return pKey;
}