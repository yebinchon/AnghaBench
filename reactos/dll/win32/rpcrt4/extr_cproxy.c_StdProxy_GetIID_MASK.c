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
struct TYPE_4__ {int /*<<< orphan*/ * piid; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ StdProxyImpl ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  IID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(LPVOID iface,
                               const IID **ppiid)
{
  StdProxyImpl *This = FUNC1( iface );
  FUNC0("(%p)->GetIID(%p) %s\n",This,ppiid,This->name);

  *ppiid = This->piid;
}