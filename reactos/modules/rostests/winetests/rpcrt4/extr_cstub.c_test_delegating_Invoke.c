
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int msg ;
struct TYPE_4__ {int iMethod; scalar_t__ Buffer; int dataRepresentation; } ;
typedef TYPE_1__ RPCOLEMESSAGE ;
typedef int IUnknown ;
typedef int ITypeLibVtbl ;
typedef int IRpcStubBuffer ;
typedef int IRpcChannelBufferVtbl ;
typedef int IRpcChannelBuffer ;
typedef int IPSFactoryBuffer ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 scalar_t__ E_FAIL ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,scalar_t__) ;
 int IID_if2 ;
 scalar_t__ IRpcStubBuffer_Invoke (int *,TYPE_1__*,int *) ;
 int IRpcStubBuffer_Release (int *) ;
 int NDR_LOCAL_DATA_REPRESENTATION ;
 scalar_t__ S_OK ;
 int * create_stub (int *,int *,int *,scalar_t__) ;
 int delegating_invoke_test_obj_vtbl ;
 int delegating_invoke_test_rpc_chan_vtbl ;
 int memset (TYPE_1__*,int ,int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_delegating_Invoke(IPSFactoryBuffer *ppsf)
{
    ITypeLibVtbl *obj_vtbl = &delegating_invoke_test_obj_vtbl;
    IUnknown *obj = (IUnknown*)&obj_vtbl;
    IRpcStubBuffer *pstub = create_stub(ppsf, &IID_if2, obj, S_OK);
    IRpcChannelBufferVtbl *pchan_vtbl = &delegating_invoke_test_rpc_chan_vtbl;
    IRpcChannelBuffer *pchan = (IRpcChannelBuffer *)&pchan_vtbl;
    HRESULT r = E_FAIL;
    RPCOLEMESSAGE msg;

    memset(&msg, 0, sizeof(msg));
    msg.dataRepresentation = NDR_LOCAL_DATA_REPRESENTATION;
    msg.iMethod = 3;
    r = IRpcStubBuffer_Invoke(pstub, &msg, pchan);
    ok(r == S_OK, "ret %08x\n", r);
    if(r == S_OK)
    {
        ok(*(DWORD*)msg.Buffer == 0xabcdef, "buf[0] %08x\n", *(DWORD*)msg.Buffer);
        ok(*((DWORD*)msg.Buffer + 1) == S_OK, "buf[1] %08x\n", *((DWORD*)msg.Buffer + 1));
    }

    HeapFree(GetProcessHeap(), 0, msg.Buffer);
    IRpcStubBuffer_Release(pstub);
}
