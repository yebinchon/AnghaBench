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
struct TYPE_4__ {int nPrefix; int otherError; scalar_t__ mallocFailed; int /*<<< orphan*/  pStmt; scalar_t__ zPrefix; } ;
typedef  TYPE_1__ nextCharContext ;

/* Variables and functions */
 int SQLITE_DONE ; 
 int SQLITE_ROW ; 
 int /*<<< orphan*/  SQLITE_STATIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned int) ; 
 int FUNC1 (unsigned char const*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (unsigned char*,unsigned int) ; 

__attribute__((used)) static void FUNC7(nextCharContext *p){
  unsigned cPrev = 0;
  unsigned char zPrev[8];
  int n, rc;
  
  for(;;){
    FUNC2(p->pStmt, 1, (char*)p->zPrefix, p->nPrefix,
                      SQLITE_STATIC);
    n = FUNC6(zPrev, cPrev+1);
    FUNC2(p->pStmt, 2, (char*)zPrev, n, SQLITE_STATIC);
    rc = FUNC5(p->pStmt);
    if( rc==SQLITE_DONE ){
      FUNC4(p->pStmt);
      return;
    }else if( rc!=SQLITE_ROW ){
      p->otherError = rc;
      return;
    }else{
      const unsigned char *zOut = FUNC3(p->pStmt, 0);
      unsigned cNext;
      n = FUNC1(zOut+p->nPrefix, &cNext);
      FUNC4(p->pStmt);
      FUNC0(p, cNext);
      cPrev = cNext;
      if( p->mallocFailed ) return;
    }
  }
}