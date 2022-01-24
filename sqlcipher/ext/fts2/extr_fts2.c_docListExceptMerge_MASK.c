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
typedef  int /*<<< orphan*/  DataBuffer ;
typedef  int /*<<< orphan*/  DLWriter ;
typedef  int /*<<< orphan*/  DLReader ;

/* Variables and functions */
 int /*<<< orphan*/  DL_DOCIDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(
  const char *pLeft, int nLeft,
  const char *pRight, int nRight,
  DataBuffer *pOut      /* Write the combined doclist here */
){
  DLReader left, right;
  DLWriter writer;

  if( nLeft==0 ) return;
  if( nRight==0 ){
    FUNC0(pOut, pLeft, nLeft);
    return;
  }

  FUNC4(&left, DL_DOCIDS, pLeft, nLeft);
  FUNC4(&right, DL_DOCIDS, pRight, nRight);
  FUNC8(&writer, DL_DOCIDS, pOut);

  while( !FUNC1(&left) ){
    while( !FUNC1(&right) && FUNC3(&right)<FUNC3(&left) ){
      FUNC5(&right);
    }
    if( FUNC1(&right) || FUNC3(&left)<FUNC3(&right) ){
      FUNC6(&writer, FUNC3(&left));
    }
    FUNC5(&left);
  }

  FUNC2(&left);
  FUNC2(&right);
  FUNC7(&writer);
}