#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  RpcConnection ;
typedef  int /*<<< orphan*/  RPC_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  RPC_S_SERVER_UNAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static RPC_STATUS FUNC1(RpcConnection *old_conn, RpcConnection *new_conn)
{
    FUNC0(0);
    return RPC_S_SERVER_UNAVAILABLE;
}