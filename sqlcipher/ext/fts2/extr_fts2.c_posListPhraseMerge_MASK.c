#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ iType; } ;
typedef  int /*<<< orphan*/  PLWriter ;
typedef  int /*<<< orphan*/  PLReader ;
typedef  TYPE_1__ DLWriter ;
typedef  int /*<<< orphan*/  DLReader ;

/* Variables and functions */
 scalar_t__ DL_POSITIONS_OFFSETS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(DLReader *pLeft, DLReader *pRight,
                               DLWriter *pOut){
  PLReader left, right;
  PLWriter writer;
  int match = 0;

  FUNC0( FUNC1(pLeft)==FUNC1(pRight) );
  FUNC0( pOut->iType!=DL_POSITIONS_OFFSETS );

  FUNC5(&left, pLeft);
  FUNC5(&right, pRight);

  while( !FUNC2(&left) && !FUNC2(&right) ){
    if( FUNC3(&left)<FUNC3(&right) ){
      FUNC7(&left);
    }else if( FUNC3(&left)>FUNC3(&right) ){
      FUNC7(&right);
    }else if( FUNC6(&left)+1<FUNC6(&right) ){
      FUNC7(&left);
    }else if( FUNC6(&left)+1>FUNC6(&right) ){
      FUNC7(&right);
    }else{
      if( !match ){
        FUNC10(&writer, pOut, FUNC1(pLeft));
        match = 1;
      }
      FUNC8(&writer, FUNC3(&right), FUNC6(&right), 0, 0);
      FUNC7(&left);
      FUNC7(&right);
    }
  }

  if( match ){
    FUNC11(&writer);
    FUNC9(&writer);
  }

  FUNC4(&left);
  FUNC4(&right);
}