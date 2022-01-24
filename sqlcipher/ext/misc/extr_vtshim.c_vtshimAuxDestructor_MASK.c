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
struct TYPE_3__ {scalar_t__ pAllVtab; struct TYPE_3__* pMod; struct TYPE_3__* zName; int /*<<< orphan*/  (* xChildDestroy ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  pChildAux; int /*<<< orphan*/  bDisposed; } ;
typedef  TYPE_1__ vtshim_aux ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *pXAux){
  vtshim_aux *pAux = (vtshim_aux*)pXAux;
  FUNC0( pAux->pAllVtab==0 );
  if( !pAux->bDisposed && pAux->xChildDestroy ){
    pAux->xChildDestroy(pAux->pChildAux);
    pAux->xChildDestroy = 0;
  }
  FUNC1(pAux->zName);
  FUNC1(pAux->pMod);
  FUNC1(pAux);
}