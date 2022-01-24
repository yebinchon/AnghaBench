#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int ref; int /*<<< orphan*/  riidInst; scalar_t__ pcRefDll; int /*<<< orphan*/  lpfnCI; TYPE_1__ IClassFactory_iface; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  scalar_t__ PLONG ;
typedef  int /*<<< orphan*/  LPFNCREATEINSTANCE ;
typedef  int /*<<< orphan*/ * LPCLASSFACTORY ;
typedef  TYPE_2__ IDefClFImpl ;
typedef  int /*<<< orphan*/  IClassFactory ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dclfvt ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static IClassFactory * FUNC5(LPFNCREATEINSTANCE lpfnCI, PLONG pcRefDll, REFIID riidInst)
{
	IDefClFImpl* lpclf;

	lpclf = FUNC1(FUNC0(),0,sizeof(IDefClFImpl));
	lpclf->ref = 1;
	lpclf->IClassFactory_iface.lpVtbl = &dclfvt;
	lpclf->lpfnCI = lpfnCI;
	lpclf->pcRefDll = pcRefDll;

	if (pcRefDll) FUNC2(pcRefDll);
	lpclf->riidInst = riidInst;

	FUNC3("(%p)%s\n",lpclf, FUNC4(riidInst));
	return (LPCLASSFACTORY)lpclf;
}