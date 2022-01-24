#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  i; } ;
struct TYPE_9__ {int nState; int* aArg; TYPE_1__ sIn; } ;
typedef  TYPE_2__ ReCompiled ;

/* Variables and functions */
 int /*<<< orphan*/  RE_OP_FORK ; 
 int /*<<< orphan*/  RE_OP_GOTO ; 
 char FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ,int) ; 
 char* FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static const char *FUNC4(ReCompiled *p){
  const char *zErr;
  int iStart, iEnd, iGoto;
  iStart = p->nState;
  zErr = FUNC3(p);
  if( zErr ) return zErr;
  while( FUNC0(p)=='|' ){
    iEnd = p->nState;
    FUNC2(p, iStart, RE_OP_FORK, iEnd + 2 - iStart);
    iGoto = FUNC1(p, RE_OP_GOTO, 0);
    p->sIn.i++;
    zErr = FUNC3(p);
    if( zErr ) return zErr;
    p->aArg[iGoto] = p->nState - iGoto;
  }
  return 0;
}