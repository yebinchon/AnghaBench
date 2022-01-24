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
struct TYPE_4__ {int /*<<< orphan*/ * Assoc; int /*<<< orphan*/  NetworkOptions; int /*<<< orphan*/  Endpoint; int /*<<< orphan*/  NetworkAddr; int /*<<< orphan*/  Protseq; } ;
typedef  TYPE_1__ RpcBinding ;
typedef  scalar_t__ RPC_STATUS ;
typedef  int /*<<< orphan*/  LPCSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ RPC_S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*,int /*<<< orphan*/ ) ; 

RPC_STATUS FUNC5(RpcBinding* Binding, LPCSTR Endpoint)
{
  RPC_STATUS status;

  FUNC4("(RpcBinding == ^%p, EndPoint == \"%s\"\n", Binding, Endpoint);

  FUNC2(Binding->Endpoint);
  Binding->Endpoint = FUNC1(Endpoint);

  if (Binding->Assoc) FUNC3(Binding->Assoc);
  Binding->Assoc = NULL;
  status = FUNC0(Binding->Protseq, Binding->NetworkAddr,
                                 Binding->Endpoint, Binding->NetworkOptions,
                                 &Binding->Assoc);
  if (status != RPC_S_OK)
      return status;

  return RPC_S_OK;
}