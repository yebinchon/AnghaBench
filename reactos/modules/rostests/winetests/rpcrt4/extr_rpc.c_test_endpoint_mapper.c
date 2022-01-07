
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int handle_t ;
typedef scalar_t__ RPC_STATUS ;
typedef int RPC_CSTR ;
typedef int RPC_BINDING_VECTOR ;


 int FALSE ;
 int IFoo_v0_0_s_ifspec ;
 scalar_t__ RPC_S_OK ;
 scalar_t__ RPC_S_SERVER_UNAVAILABLE ;
 scalar_t__ RpcBindingFree (int *) ;
 scalar_t__ RpcBindingFromStringBindingA (unsigned char*,int *) ;
 scalar_t__ RpcBindingReset (int ) ;
 scalar_t__ RpcBindingVectorFree (int **) ;
 scalar_t__ RpcEpRegisterA (int ,int *,int *,unsigned char*) ;
 scalar_t__ RpcEpResolveBinding (int ,int ) ;
 scalar_t__ RpcEpUnregister (int ,int *,int *) ;
 scalar_t__ RpcServerInqBindings (int **) ;
 scalar_t__ RpcServerRegisterIf (int ,int *,int *) ;
 scalar_t__ RpcServerUnregisterIf (int *,int *,int ) ;
 scalar_t__ RpcStringBindingComposeA (int *,int ,int ,int *,int *,unsigned char**) ;
 int RpcStringFreeA (unsigned char**) ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int ,scalar_t__) ;

__attribute__((used)) static void test_endpoint_mapper(RPC_CSTR protseq, RPC_CSTR address)
{
    static unsigned char annotation[] = "Test annotation string.";
    RPC_STATUS status;
    RPC_BINDING_VECTOR *binding_vector;
    handle_t handle;
    unsigned char *binding;

    status = RpcServerRegisterIf(IFoo_v0_0_s_ifspec, ((void*)0), ((void*)0));
    ok(status == RPC_S_OK, "%s: RpcServerRegisterIf failed (%u)\n", protseq, status);

    status = RpcServerInqBindings(&binding_vector);
    ok(status == RPC_S_OK, "%s: RpcServerInqBindings failed with error %u\n", protseq, status);


    status = RpcEpRegisterA(IFoo_v0_0_s_ifspec, binding_vector, ((void*)0), annotation);
    ok(status == RPC_S_OK, "%s: RpcEpRegisterA failed with error %u\n", protseq, status);

    status = RpcEpRegisterA(IFoo_v0_0_s_ifspec, binding_vector, ((void*)0), ((void*)0));
    ok(status == RPC_S_OK, "%s: RpcEpRegisterA failed with error %u\n", protseq, status);

    status = RpcStringBindingComposeA(((void*)0), protseq, address,
                                     ((void*)0), ((void*)0), &binding);
    ok(status == RPC_S_OK, "%s: RpcStringBindingCompose failed (%u)\n", protseq, status);

    status = RpcBindingFromStringBindingA(binding, &handle);
    ok(status == RPC_S_OK, "%s: RpcBindingFromStringBinding failed (%u)\n", protseq, status);

    RpcStringFreeA(&binding);

    status = RpcBindingReset(handle);
    ok(status == RPC_S_OK, "%s: RpcBindingReset failed with error %u\n", protseq, status);

    status = RpcEpResolveBinding(handle, IFoo_v0_0_s_ifspec);
    ok(status == RPC_S_OK || broken(status == RPC_S_SERVER_UNAVAILABLE),
       "%s: RpcEpResolveBinding failed with error %u\n", protseq, status);

    status = RpcBindingReset(handle);
    ok(status == RPC_S_OK, "%s: RpcBindingReset failed with error %u\n", protseq, status);

    status = RpcBindingFree(&handle);
    ok(status == RPC_S_OK, "%s: RpcBindingFree failed with error %u\n", protseq, status);

    status = RpcServerUnregisterIf(((void*)0), ((void*)0), FALSE);
    ok(status == RPC_S_OK, "%s: RpcServerUnregisterIf failed (%u)\n", protseq, status);

    status = RpcEpUnregister(IFoo_v0_0_s_ifspec, binding_vector, ((void*)0));
    ok(status == RPC_S_OK, "%s: RpcEpUnregisterA failed with error %u\n", protseq, status);

    status = RpcBindingVectorFree(&binding_vector);
    ok(status == RPC_S_OK, "%s: RpcBindingVectorFree failed with error %u\n", protseq, status);
}
