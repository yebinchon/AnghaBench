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
typedef  int /*<<< orphan*/  UUID ;
struct TYPE_4__ {int /*<<< orphan*/  ObjectUuid; } ;
typedef  TYPE_1__ RpcBinding ;
typedef  int /*<<< orphan*/  RPC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_S_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 

RPC_STATUS FUNC3(RpcBinding* Binding, const UUID* ObjectUuid)
{
  FUNC0("(*RpcBinding == ^%p, UUID == %s)\n", Binding, FUNC2(ObjectUuid)); 
  if (ObjectUuid) Binding->ObjectUuid = *ObjectUuid;
  else FUNC1(&Binding->ObjectUuid);
  return RPC_S_OK;
}