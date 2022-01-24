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
struct TYPE_4__ {int nAlloc; int nState; char* aOp; int* aArg; } ;
typedef  TYPE_1__ ReCompiled ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC1(ReCompiled *p, int iBefore, int op, int arg){
  int i;
  if( p->nAlloc<=p->nState && FUNC0(p, p->nAlloc*2) ) return 0;
  for(i=p->nState; i>iBefore; i--){
    p->aOp[i] = p->aOp[i-1];
    p->aArg[i] = p->aArg[i-1];
  }
  p->nState++;
  p->aOp[iBefore] = (char)op;
  p->aArg[iBefore] = arg;
  return iBefore;
}