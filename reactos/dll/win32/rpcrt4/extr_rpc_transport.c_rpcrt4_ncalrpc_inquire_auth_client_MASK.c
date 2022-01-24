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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  RpcConnection ;
typedef  int /*<<< orphan*/ * RPC_WSTR ;
typedef  int /*<<< orphan*/  RPC_STATUS ;
typedef  int /*<<< orphan*/ * RPC_AUTHZ_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ RPC_C_AUTHN_LEVEL_PKT_PRIVACY ; 
 scalar_t__ RPC_C_AUTHN_WINNT ; 
 scalar_t__ RPC_C_AUTHZ_NONE ; 
 int /*<<< orphan*/  RPC_S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__) ; 

__attribute__((used)) static RPC_STATUS FUNC2(
    RpcConnection *conn, RPC_AUTHZ_HANDLE *privs, RPC_WSTR *server_princ_name,
    ULONG *authn_level, ULONG *authn_svc, ULONG *authz_svc, ULONG flags)
{
    FUNC1("(%p, %p, %p, %p, %p, %p, 0x%x)\n", conn, privs,
          server_princ_name, authn_level, authn_svc, authz_svc, flags);

    if (privs)
    {
        FUNC0("privs not implemented\n");
        *privs = NULL;
    }
    if (server_princ_name)
    {
        FUNC0("server_princ_name not implemented\n");
        *server_princ_name = NULL;
    }
    if (authn_level) *authn_level = RPC_C_AUTHN_LEVEL_PKT_PRIVACY;
    if (authn_svc) *authn_svc = RPC_C_AUTHN_WINNT;
    if (authz_svc)
    {
        FUNC0("authorization service not implemented\n");
        *authz_svc = RPC_C_AUTHZ_NONE;
    }
    if (flags)
        FUNC0("flags 0x%x not implemented\n", flags);

    return RPC_S_OK;
}