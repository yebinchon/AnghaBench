#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ QOS; scalar_t__ AuthInfo; struct TYPE_5__* CookieAuth; struct TYPE_5__* NetworkOptions; int /*<<< orphan*/  Protseq; int /*<<< orphan*/  NetworkAddr; int /*<<< orphan*/  Endpoint; scalar_t__ Assoc; int /*<<< orphan*/  refs; } ;
typedef  TYPE_1__ RpcBinding ;
typedef  int /*<<< orphan*/  RPC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPC_S_OK ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_1__*) ; 

RPC_STATUS FUNC8(RpcBinding* Binding)
{
  if (FUNC2(&Binding->refs))
    return RPC_S_OK;

  FUNC7("binding: %p\n", Binding);
  if (Binding->Assoc) FUNC4(Binding->Assoc);
  FUNC3(Binding->Endpoint);
  FUNC3(Binding->NetworkAddr);
  FUNC3(Binding->Protseq);
  FUNC1(FUNC0(), 0, Binding->NetworkOptions);
  FUNC1(FUNC0(), 0, Binding->CookieAuth);
  if (Binding->AuthInfo) FUNC5(Binding->AuthInfo);
  if (Binding->QOS) FUNC6(Binding->QOS);
  FUNC1(FUNC0(), 0, Binding);
  return RPC_S_OK;
}