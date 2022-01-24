#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ iType; } ;
struct TYPE_9__ {scalar_t__ iType; } ;
typedef  int /*<<< orphan*/  PLWriter ;
typedef  int /*<<< orphan*/  PLReader ;
typedef  TYPE_1__ DLWriter ;
typedef  TYPE_2__ DLReader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(DLReader *pLeft, DLReader *pRight, DLWriter *pOut){
  PLReader left, right;
  PLWriter writer;

  FUNC0( FUNC1(pLeft)==FUNC1(pRight) );
  FUNC0( pLeft->iType==pRight->iType );
  FUNC0( pLeft->iType==pOut->iType );

  FUNC4(&left, pLeft);
  FUNC4(&right, pRight);
  FUNC8(&writer, pOut, FUNC1(pLeft));

  while( !FUNC2(&left) || !FUNC2(&right) ){
    int c = FUNC10(&left, &right);
    if( c<0 ){
      FUNC6(&writer, &left);
      FUNC5(&left);
    }else if( c>0 ){
      FUNC6(&writer, &right);
      FUNC5(&right);
    }else{
      FUNC6(&writer, &left);
      FUNC5(&left);
      FUNC5(&right);
    }
  }

  FUNC9(&writer);
  FUNC7(&writer);
  FUNC3(&left);
  FUNC3(&right);
}