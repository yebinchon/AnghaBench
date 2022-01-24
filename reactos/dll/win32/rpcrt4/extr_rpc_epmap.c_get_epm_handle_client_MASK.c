#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* endpoint; int /*<<< orphan*/  protseq; } ;
struct TYPE_10__ {int /*<<< orphan*/ * AuthInfo; int /*<<< orphan*/  Protseq; scalar_t__ server; } ;
typedef  TYPE_1__ RpcBinding ;
typedef  scalar_t__ RPC_STATUS ;
typedef  TYPE_1__* RPC_BINDING_HANDLE ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*) ; 
 scalar_t__ RPC_S_INVALID_BINDING ; 
 scalar_t__ RPC_S_OK ; 
 scalar_t__ RPC_S_PROTSEQ_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_5__* epm_endpoints ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static RPC_STATUS FUNC8(RPC_BINDING_HANDLE handle, RPC_BINDING_HANDLE *epm_handle)
{
    RpcBinding *bind = handle;
    const char * pszEndpoint = NULL;
    RPC_STATUS status;
    RpcBinding* epm_bind;
    unsigned int i;

    if (bind->server)
        return RPC_S_INVALID_BINDING;

    for (i = 0; i < FUNC0(epm_endpoints); i++)
        if (!FUNC7(bind->Protseq, epm_endpoints[i].protseq))
            pszEndpoint = epm_endpoints[i].endpoint;

    if (!pszEndpoint)
    {
        FUNC1("no endpoint for the endpoint-mapper found for protseq %s\n", FUNC6(bind->Protseq));
        return RPC_S_PROTSEQ_NOT_SUPPORTED;
    }

    status = FUNC4(handle, epm_handle);
    if (status != RPC_S_OK) return status;

    epm_bind = *epm_handle;
    if (epm_bind->AuthInfo)
    {
        /* don't bother with authenticating against the EPM by default
        * (see EnableAuthEpResolution registry value) */
        FUNC3(epm_bind->AuthInfo);
        epm_bind->AuthInfo = NULL;
    }
    FUNC2(epm_bind, pszEndpoint);
    FUNC5("RPC_S_OK\n");
    return RPC_S_OK;
}