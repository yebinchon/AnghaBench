#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  pUnk; } ;
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int ref; int nConns; TYPE_3__* pCD; scalar_t__ nCur; int /*<<< orphan*/ * pUnk; TYPE_1__ IEnumConnections_iface; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_2__ EnumConnectionsImpl ;
typedef  int DWORD ;
typedef  TYPE_3__ CONNECTDATA ;

/* Variables and functions */
 int /*<<< orphan*/  EnumConnectionsImpl_VTable ; 
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static EnumConnectionsImpl *FUNC3(IUnknown *pUnk,
							  DWORD nSinks,
							  CONNECTDATA *pCD)
{
  EnumConnectionsImpl *Obj = FUNC1(FUNC0(), 0, sizeof(*Obj));
  DWORD i;

  Obj->IEnumConnections_iface.lpVtbl = &EnumConnectionsImpl_VTable;
  Obj->ref = 1;
  Obj->pUnk = pUnk;
  Obj->pCD = FUNC1(FUNC0(), 0, nSinks * sizeof(CONNECTDATA));
  Obj->nConns = nSinks;
  Obj->nCur = 0;

  for(i = 0; i < nSinks; i++) {
    Obj->pCD[i] = pCD[i];
    FUNC2(Obj->pCD[i].pUnk);
  }
  return Obj;
}