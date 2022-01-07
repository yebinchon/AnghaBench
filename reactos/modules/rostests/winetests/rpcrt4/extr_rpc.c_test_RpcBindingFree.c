
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ RPC_STATUS ;
typedef int * RPC_BINDING_HANDLE ;


 scalar_t__ RPC_S_INVALID_BINDING ;
 scalar_t__ RpcBindingFree (int **) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_RpcBindingFree(void)
{
    RPC_BINDING_HANDLE binding = ((void*)0);
    RPC_STATUS status;

    status = RpcBindingFree(&binding);
    ok(status == RPC_S_INVALID_BINDING,
       "RpcBindingFree should have returned RPC_S_INVALID_BINDING instead of %d\n",
       status);
}
