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
struct NtileCtx {scalar_t__ nTotal; scalar_t__ nParam; } ;
typedef  int /*<<< orphan*/  sqlite3_value ;
typedef  int /*<<< orphan*/  sqlite3_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(
  sqlite3_context *pCtx, 
  int nArg,
  sqlite3_value **apArg
){
  struct NtileCtx *p;
  FUNC1( nArg==1 ); FUNC0(nArg);
  p = (struct NtileCtx*)FUNC2(pCtx, sizeof(*p));
  if( p ){
    if( p->nTotal==0 ){
      p->nParam = FUNC4(apArg[0]);
      if( p->nParam<=0 ){
        FUNC3(
            pCtx, "argument of ntile must be a positive integer", -1
        );
      }
    }
    p->nTotal++;
  }
}