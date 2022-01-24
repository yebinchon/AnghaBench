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
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ RPC_STATUS ;
typedef  int /*<<< orphan*/  RPC_CSTR ;
typedef  int /*<<< orphan*/  RPC_BINDING_VECTOR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IFoo_v0_0_s_ifspec ; 
 scalar_t__ RPC_S_OK ; 
 scalar_t__ RPC_S_SERVER_UNAVAILABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char**) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char**) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC14(RPC_CSTR protseq, RPC_CSTR address)
{
    static unsigned char annotation[] = "Test annotation string.";
    RPC_STATUS status;
    RPC_BINDING_VECTOR *binding_vector;
    handle_t handle;
    unsigned char *binding;

    status = FUNC8(IFoo_v0_0_s_ifspec, NULL, NULL);
    FUNC13(status == RPC_S_OK, "%s: RpcServerRegisterIf failed (%u)\n", protseq, status);

    status = FUNC7(&binding_vector);
    FUNC13(status == RPC_S_OK, "%s: RpcServerInqBindings failed with error %u\n", protseq, status);

    /* register endpoints created in test_RpcServerUseProtseq */
    status = FUNC4(IFoo_v0_0_s_ifspec, binding_vector, NULL, annotation);
    FUNC13(status == RPC_S_OK, "%s: RpcEpRegisterA failed with error %u\n", protseq, status);
    /* reregister the same endpoint with no annotation */
    status = FUNC4(IFoo_v0_0_s_ifspec, binding_vector, NULL, NULL);
    FUNC13(status == RPC_S_OK, "%s: RpcEpRegisterA failed with error %u\n", protseq, status);

    status = FUNC10(NULL, protseq, address,
                                     NULL, NULL, &binding);
    FUNC13(status == RPC_S_OK, "%s: RpcStringBindingCompose failed (%u)\n", protseq, status);

    status = FUNC1(binding, &handle);
    FUNC13(status == RPC_S_OK, "%s: RpcBindingFromStringBinding failed (%u)\n", protseq, status);

    FUNC11(&binding);

    status = FUNC2(handle);
    FUNC13(status == RPC_S_OK, "%s: RpcBindingReset failed with error %u\n", protseq, status);

    status = FUNC5(handle, IFoo_v0_0_s_ifspec);
    FUNC13(status == RPC_S_OK || FUNC12(status == RPC_S_SERVER_UNAVAILABLE), /* win9x */
       "%s: RpcEpResolveBinding failed with error %u\n", protseq, status);

    status = FUNC2(handle);
    FUNC13(status == RPC_S_OK, "%s: RpcBindingReset failed with error %u\n", protseq, status);

    status = FUNC0(&handle);
    FUNC13(status == RPC_S_OK, "%s: RpcBindingFree failed with error %u\n", protseq, status);

    status = FUNC9(NULL, NULL, FALSE);
    FUNC13(status == RPC_S_OK, "%s: RpcServerUnregisterIf failed (%u)\n", protseq, status);

    status = FUNC6(IFoo_v0_0_s_ifspec, binding_vector, NULL);
    FUNC13(status == RPC_S_OK, "%s: RpcEpUnregisterA failed with error %u\n", protseq, status);

    status = FUNC3(&binding_vector);
    FUNC13(status == RPC_S_OK, "%s: RpcBindingVectorFree failed with error %u\n", protseq, status);
}