#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct LastValueCtx {scalar_t__ nVal; scalar_t__ pVal; } ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct LastValueCtx*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(
  sqlite3_context *pCtx, 
  int nArg,
  sqlite3_value **apArg
){
  struct LastValueCtx *p;
  FUNC1(nArg);
  FUNC1(apArg);
  p = (struct LastValueCtx*)FUNC2(pCtx, sizeof(*p));
  if( FUNC0(p) ){
    p->nVal--;
    if( p->nVal==0 ){
      FUNC3(p->pVal);
      p->pVal = 0;
    }
  }
}