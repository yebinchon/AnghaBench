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
struct TYPE_4__ {int refs; int /*<<< orphan*/  server; } ;
typedef  TYPE_1__ RpcBinding ;
typedef  int /*<<< orphan*/  RPC_STATUS ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RPC_S_OK ; 

__attribute__((used)) static RPC_STATUS FUNC2(RpcBinding** Binding, BOOL server)
{
  RpcBinding* NewBinding;

  NewBinding = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(RpcBinding));
  NewBinding->refs = 1;
  NewBinding->server = server;

  *Binding = NewBinding;

  return RPC_S_OK;
}