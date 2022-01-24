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
struct TYPE_5__ {int /*<<< orphan*/  Protseq; } ;
typedef  TYPE_1__ RpcBinding ;
typedef  int /*<<< orphan*/  RPC_STATUS ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RPC_S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 

__attribute__((used)) static RPC_STATUS FUNC3(RpcBinding** Binding, BOOL server, LPCWSTR Protseq)
{
  RpcBinding* NewBinding;

  FUNC0(&NewBinding, server);
  NewBinding->Protseq = FUNC1(Protseq);

  FUNC2("binding: %p\n", NewBinding);
  *Binding = NewBinding;

  return RPC_S_OK;
}