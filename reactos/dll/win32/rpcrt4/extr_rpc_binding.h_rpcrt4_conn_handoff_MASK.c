#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* ops; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* handoff ) (TYPE_2__*,TYPE_2__*) ;} ;
typedef  TYPE_2__ RpcConnection ;
typedef  int /*<<< orphan*/  RPC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static inline RPC_STATUS FUNC1(RpcConnection *old_conn, RpcConnection *new_conn)
{
  return old_conn->ops->handoff(old_conn, new_conn);
}