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
struct TYPE_5__ {int sock; int /*<<< orphan*/  common; } ;
typedef  TYPE_1__ RpcConnection_tcp ;
typedef  int /*<<< orphan*/  RpcConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static RpcConnection *FUNC4(void)
{
  RpcConnection_tcp *tcpc;
  tcpc = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeof(RpcConnection_tcp));
  if (tcpc == NULL)
    return NULL;
  tcpc->sock = -1;
  if (!FUNC3(tcpc))
  {
    FUNC2(FUNC0(), 0, tcpc);
    return NULL;
  }
  return &tcpc->common;
}