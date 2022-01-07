
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ RPC_STATUS ;


 scalar_t__ RPC_S_UNKNOWN_AUTHN_SERVICE ;
 scalar_t__ RpcServerRegisterAuthInfoW (int *,int,int *,int *) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_RpcServerRegisterAuthInfo(void)
{
    RPC_STATUS status;

    status = RpcServerRegisterAuthInfoW(((void*)0), 600, ((void*)0), ((void*)0));
    ok(status == RPC_S_UNKNOWN_AUTHN_SERVICE, "status = %x\n", status);
}
