#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {scalar_t__ eState; } ;
typedef  TYPE_1__ BtCursor ;

/* Variables and functions */
 scalar_t__ CURSOR_VALID ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int FUNC4(BtCursor *pCur, u32 offset, u32 amt, void *pBuf){
  if( pCur->eState==CURSOR_VALID ){
    FUNC2( FUNC3(pCur) );
    return FUNC0(pCur, offset, amt, pBuf, 0);
  }else{
    return FUNC1(pCur, offset, amt, pBuf);
  }
}