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
struct TYPE_4__ {int /*<<< orphan*/  nTest; int /*<<< orphan*/  pWrMutex; int /*<<< orphan*/  tid; } ;
typedef  TYPE_1__ WorkerInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(WorkerInfo *p, int mn, int mx, int iTab){
  char *zTabDef;
  switch( iTab ){
    case 1:  zTabDef = "t1(tid,sp,a,b,c)";  break;
    case 2:  zTabDef = "t2(tid,sp,d,e,f)";  break;
    case 3:  zTabDef = "t3(tid,sp,x,y,z)";  break;
  }
  FUNC0(p->pWrMutex);
  FUNC2(p, 
     "WITH RECURSIVE\n"
     " c(i) AS (VALUES(%d) UNION ALL SELECT i+1 FROM c WHERE i<%d)\n"
     "INSERT INTO %s SELECT %d, zeroblob(3000), i, printf('%%d',i), i FROM c;",
     mn, mx, zTabDef, p->tid
  );
  FUNC1(p->pWrMutex);
  p->nTest++;
}