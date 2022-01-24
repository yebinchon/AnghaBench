#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* aOp; int* aArg; int nAlloc; } ;
typedef  TYPE_1__ ReCompiled ;

/* Variables and functions */
 void* FUNC0 (int*,int) ; 

__attribute__((used)) static int FUNC1(ReCompiled *p, int N){
  char *aOp;
  int *aArg;
  aOp = FUNC0(p->aOp, N*sizeof(p->aOp[0]));
  if( aOp==0 ) return 1;
  p->aOp = aOp;
  aArg = FUNC0(p->aArg, N*sizeof(p->aArg[0]));
  if( aArg==0 ) return 1;
  p->aArg = aArg;
  p->nAlloc = N;
  return 0;
}