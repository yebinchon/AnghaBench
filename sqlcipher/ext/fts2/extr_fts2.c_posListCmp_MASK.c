#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ iType; } ;
typedef  TYPE_1__ PLReader ;

/* Variables and functions */
 scalar_t__ DL_DOCIDS ; 
 scalar_t__ DL_POSITIONS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(PLReader *pLeft, PLReader *pRight){
  FUNC0( pLeft->iType==pRight->iType );
  if( pLeft->iType==DL_DOCIDS ) return 0;

  if( FUNC1(pLeft) ) return FUNC1(pRight) ? 0 : 1;
  if( FUNC1(pRight) ) return -1;

  if( FUNC2(pLeft)<FUNC2(pRight) ) return -1;
  if( FUNC2(pLeft)>FUNC2(pRight) ) return 1;

  if( FUNC4(pLeft)<FUNC4(pRight) ) return -1;
  if( FUNC4(pLeft)>FUNC4(pRight) ) return 1;
  if( pLeft->iType==DL_POSITIONS ) return 0;

  if( FUNC5(pLeft)<FUNC5(pRight) ) return -1;
  if( FUNC5(pLeft)>FUNC5(pRight) ) return 1;

  if( FUNC3(pLeft)<FUNC3(pRight) ) return -1;
  if( FUNC3(pLeft)>FUNC3(pRight) ) return 1;

  return 0;
}