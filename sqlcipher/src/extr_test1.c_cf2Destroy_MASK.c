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
struct TYPE_3__ {scalar_t__ pDestroy; scalar_t__ pFinal; scalar_t__ pStep; scalar_t__ pFunc; scalar_t__ interp; } ;
typedef  TYPE_1__ CreateFunctionV2 ;

/* Variables and functions */
 int TCL_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(void *pUser){
  CreateFunctionV2 *p = (CreateFunctionV2 *)pUser;

  if( p->interp && p->pDestroy ){
    int rc = FUNC2(p->interp, p->pDestroy, 0);
    if( rc!=TCL_OK ) FUNC0(p->interp);
  }

  if( p->pFunc ) FUNC1(p->pFunc); 
  if( p->pStep ) FUNC1(p->pStep); 
  if( p->pFinal ) FUNC1(p->pFinal); 
  if( p->pDestroy ) FUNC1(p->pDestroy); 
  FUNC3(p);
}