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
struct TYPE_6__ {scalar_t__ zErr; } ;
typedef  TYPE_1__ GState ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int) ; 
 int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC3(GState *p){
  int nCell;
  int i;
  int ofst;
  int iChild;

  nCell = FUNC0(p, 3);
  for(i=0; i<nCell; i++){
    ofst = FUNC0(p, 12+i*2);
    iChild = FUNC1(p, ofst);
    FUNC2(p, iChild);
    if( p->zErr ) return;
  }
  FUNC2(p, FUNC1(p, 8));
}