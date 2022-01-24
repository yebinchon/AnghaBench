#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ db; int flags; } ;
typedef  TYPE_1__ Mem ;

/* Variables and functions */
 int /*<<< orphan*/  MEMCELLSIZE ; 
 int MEM_Dyn ; 
 int MEM_Ephem ; 
 int MEM_Static ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__ const*,int) ; 

void FUNC5(Mem *pTo, const Mem *pFrom, int srcType){
  FUNC1( !FUNC3(pFrom) );
  FUNC1( pTo->db==pFrom->db );
  if( FUNC0(pTo) ){ FUNC4(pTo,pFrom,srcType); return; }
  FUNC2(pTo, pFrom, MEMCELLSIZE);
  if( (pFrom->flags&MEM_Static)==0 ){
    pTo->flags &= ~(MEM_Dyn|MEM_Static|MEM_Ephem);
    FUNC1( srcType==MEM_Ephem || srcType==MEM_Static );
    pTo->flags |= srcType;
  }
}