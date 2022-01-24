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
typedef  scalar_t__ i64 ;
typedef  int /*<<< orphan*/  RtreeNode ;
typedef  int /*<<< orphan*/  Rtree ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int SQLITE_CORRUPT_VTAB ; 
 int SQLITE_OK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(
  Rtree *pRtree, 
  RtreeNode *pNode, 
  i64 iRowid,
  int *piIndex
){
  int ii;
  int nCell = FUNC0(pNode);
  FUNC2( nCell<200 );
  for(ii=0; ii<nCell; ii++){
    if( FUNC3(pRtree, pNode, ii)==iRowid ){
      *piIndex = ii;
      return SQLITE_OK;
    }
  }
  FUNC1(pRtree);
  return SQLITE_CORRUPT_VTAB;
}