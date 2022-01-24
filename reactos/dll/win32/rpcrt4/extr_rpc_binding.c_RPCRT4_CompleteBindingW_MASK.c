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
struct TYPE_4__ {int /*<<< orphan*/  Assoc; int /*<<< orphan*/  NetworkOptions; void* Endpoint; void* NetworkAddr; int /*<<< orphan*/  Protseq; } ;
typedef  TYPE_1__ RpcBinding ;
typedef  scalar_t__ RPC_STATUS ;
typedef  char* LPCWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 scalar_t__ RPC_S_OK ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static RPC_STATUS FUNC8(RpcBinding* Binding, LPCWSTR NetworkAddr,
                                          LPCWSTR Endpoint, LPCWSTR NetworkOptions)
{
  RPC_STATUS status;

  FUNC6("(RpcBinding == ^%p, NetworkAddr == %s, EndPoint == %s, NetworkOptions == %s)\n", Binding, 
   FUNC7(NetworkAddr), FUNC7(Endpoint), FUNC7(NetworkOptions));

  FUNC5(Binding->NetworkAddr);
  Binding->NetworkAddr = FUNC4(NetworkAddr);
  FUNC5(Binding->Endpoint);
  Binding->Endpoint = FUNC4(Endpoint);
  FUNC1(FUNC0(), 0, Binding->NetworkOptions);
  Binding->NetworkOptions = FUNC3(NetworkOptions);

  /* only attempt to get an association if the binding is complete */
  if (Endpoint && Endpoint[0] != '\0')
  {
    status = FUNC2(Binding->Protseq, Binding->NetworkAddr,
                                   Binding->Endpoint, Binding->NetworkOptions,
                                   &Binding->Assoc);
    if (status != RPC_S_OK)
        return status;
  }

  return RPC_S_OK;
}