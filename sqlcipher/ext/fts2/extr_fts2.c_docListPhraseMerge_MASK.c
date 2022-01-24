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
typedef  int /*<<< orphan*/  DocListType ;
typedef  int /*<<< orphan*/  DataBuffer ;
typedef  int /*<<< orphan*/  DLWriter ;
typedef  int /*<<< orphan*/  DLReader ;

/* Variables and functions */
 int /*<<< orphan*/  DL_POSITIONS ; 
 int /*<<< orphan*/  DL_POSITIONS_OFFSETS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(
  const char *pLeft, int nLeft,
  const char *pRight, int nRight,
  DocListType iType,
  DataBuffer *pOut      /* Write the combined doclist here */
){
  DLReader left, right;
  DLWriter writer;

  if( nLeft==0 || nRight==0 ) return;

  FUNC0( iType!=DL_POSITIONS_OFFSETS );

  FUNC4(&left, DL_POSITIONS, pLeft, nLeft);
  FUNC4(&right, DL_POSITIONS, pRight, nRight);
  FUNC7(&writer, iType, pOut);

  while( !FUNC1(&left) && !FUNC1(&right) ){
    if( FUNC3(&left)<FUNC3(&right) ){
      FUNC5(&left);
    }else if( FUNC3(&right)<FUNC3(&left) ){
      FUNC5(&right);
    }else{
      FUNC8(&left, &right, &writer);
      FUNC5(&left);
      FUNC5(&right);
    }
  }

  FUNC2(&left);
  FUNC2(&right);
  FUNC6(&writer);
}