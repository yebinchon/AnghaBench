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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(
  const char *pLeft, int nLeft,
  const char *pRight, int nRight,
  DataBuffer *pOut      /* Write the combined doclist here */
){
  DLReader left, right;
  DLWriter writer;

  if( nLeft==0 || nRight==0 ) return;

  FUNC3(&left, DL_DOCIDS, pLeft, nLeft);
  FUNC3(&right, DL_DOCIDS, pRight, nRight);
  FUNC7(&writer, DL_DOCIDS, pOut);

  while( !FUNC0(&left) && !FUNC0(&right) ){
    if( FUNC2(&left)<FUNC2(&right) ){
      FUNC4(&left);
    }else if( FUNC2(&right)<FUNC2(&left) ){
      FUNC4(&right);
    }else{
      FUNC5(&writer, FUNC2(&left));
      FUNC4(&left);
      FUNC4(&right);
    }
  }

  FUNC1(&left);
  FUNC1(&right);
  FUNC6(&writer);
}