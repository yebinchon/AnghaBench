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
 int /*<<< orphan*/  DL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(
  const char *pLeft, int nLeft,
  const char *pRight, int nRight,
  DataBuffer *pOut      /* Write the combined doclist here */
){
  DLReader left, right;
  DLWriter writer;

  if( nLeft==0 ){
    if( nRight!=0) FUNC0(pOut, pRight, nRight);
    return;
  }
  if( nRight==0 ){
    FUNC0(pOut, pLeft, nLeft);
    return;
  }

  FUNC4(&left, DL_DEFAULT, pLeft, nLeft);
  FUNC4(&right, DL_DEFAULT, pRight, nRight);
  FUNC8(&writer, DL_DEFAULT, pOut);

  while( !FUNC1(&left) || !FUNC1(&right) ){
    if( FUNC1(&right) ){
      FUNC6(&writer, &left);
      FUNC5(&left);
    }else if( FUNC1(&left) ){
      FUNC6(&writer, &right);
      FUNC5(&right);
    }else if( FUNC3(&left)<FUNC3(&right) ){
      FUNC6(&writer, &left);
      FUNC5(&left);
    }else if( FUNC3(&left)>FUNC3(&right) ){
      FUNC6(&writer, &right);
      FUNC5(&right);
    }else{
      FUNC9(&left, &right, &writer);
      FUNC5(&left);
      FUNC5(&right);
    }
  }

  FUNC2(&left);
  FUNC2(&right);
  FUNC7(&writer);
}