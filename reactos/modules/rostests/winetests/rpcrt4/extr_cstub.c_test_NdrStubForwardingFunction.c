
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int This ;
typedef int RPC_MESSAGE ;
typedef int IRpcStubBufferVtbl ;
typedef int IRpcStubBuffer ;
typedef int IRpcChannelBuffer ;
typedef int DWORD ;


 int NdrStubForwardingFunction (void*,int *,int *,int *) ;
 int base_buffer_invoke_called ;
 int base_buffer_vtbl ;
 int memset (void**,int,int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_NdrStubForwardingFunction(void)
{
    void *This[5];
    void *real_this;
    IRpcChannelBuffer *channel = (IRpcChannelBuffer*)0xdeadbeef;
    RPC_MESSAGE *msg = (RPC_MESSAGE*)0xcafebabe;
    DWORD *phase = (DWORD*)0x12345678;
    IRpcStubBufferVtbl *base_buffer_vtbl_ptr = &base_buffer_vtbl;
    IRpcStubBuffer *base_stub_buffer = (IRpcStubBuffer*)&base_buffer_vtbl_ptr;

    memset(This, 0xcc, sizeof(This));
    This[0] = base_stub_buffer;
    real_this = &This[1];

    NdrStubForwardingFunction( real_this, channel, msg, phase );
    ok(base_buffer_invoke_called == 1, "base_buffer_invoke called %d times\n", base_buffer_invoke_called);

}
