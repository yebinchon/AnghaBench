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
typedef  int /*<<< orphan*/  RpcPktHdr ;
typedef  int /*<<< orphan*/  RpcConnection ;
typedef  int /*<<< orphan*/  RPC_STATUS ;
typedef  int /*<<< orphan*/  PRPC_MESSAGE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static RPC_STATUS FUNC1(RpcConnection *Connection, RpcPktHdr **Header,
                                 PRPC_MESSAGE pMsg)
{
    return FUNC0(Connection, Header, pMsg, NULL, NULL);
}