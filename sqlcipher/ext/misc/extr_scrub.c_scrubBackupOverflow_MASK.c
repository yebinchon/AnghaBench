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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct TYPE_6__ {int szUsable; } ;
typedef  TYPE_1__ ScrubState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(ScrubState *p, int pgno, u32 nByte){
  u8 *a, *aBuf;

  aBuf = FUNC1(p);
  if( aBuf==0 ) return;
  while( nByte>0 && pgno!=0 ){
    a = FUNC3(p, pgno, aBuf);
    if( a==0 ) break;
    if( nByte >= (p->szUsable)-4 ){
      nByte -= (p->szUsable) - 4;
    }else{
      u32 x = (p->szUsable - 4) - nByte;
      u32 i = p->szUsable - x;
      FUNC0(&a[i], 0, x);
      nByte = 0;
    }
    FUNC4(p, pgno, a);
    pgno = FUNC2(a);
  }
  FUNC5(aBuf);      
}