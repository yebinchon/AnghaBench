
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef unsigned int UINT_PTR ;
struct TYPE_10__ {int * pFormatTypes; } ;
struct TYPE_9__ {int BufferLength; scalar_t__ BufferStart; scalar_t__ Buffer; TYPE_1__* RpcMsg; } ;
struct TYPE_8__ {scalar_t__ Buffer; } ;
typedef int RPC_MESSAGE ;
typedef TYPE_2__ MIDL_STUB_MESSAGE ;
typedef TYPE_3__ MIDL_STUB_DESC ;


 int GetProcessHeap () ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,scalar_t__) ;
 int NdrClientInitializeNew (int *,TYPE_2__*,TYPE_3__*,int ) ;
 int NdrPointerMarshall (TYPE_2__*,unsigned char*,unsigned char const*) ;
 TYPE_3__ Object_StubDesc ;
 int ok (int,char*,scalar_t__,scalar_t__) ;
 int trace (char*,char*) ;
 int use_pointer_ids ;

__attribute__((used)) static void determine_pointer_marshalling_style(void)
{
    RPC_MESSAGE RpcMessage;
    MIDL_STUB_MESSAGE StubMsg;
    MIDL_STUB_DESC StubDesc;
    char ch = 0xde;

    static const unsigned char fmtstr_up_char[] =
    {
        0x12, 0x8,
        0x2,
        0x5c,
    };

    StubDesc = Object_StubDesc;
    StubDesc.pFormatTypes = ((void*)0);

    NdrClientInitializeNew(
                           &RpcMessage,
                           &StubMsg,
                           &StubDesc,
                           0);

    StubMsg.BufferLength = 8;
    StubMsg.RpcMsg->Buffer = StubMsg.BufferStart = StubMsg.Buffer = HeapAlloc(GetProcessHeap(), 0, StubMsg.BufferLength);
    NdrPointerMarshall(&StubMsg, (unsigned char*)&ch, fmtstr_up_char);
    ok(StubMsg.Buffer == StubMsg.BufferStart + 5, "%p %p\n", StubMsg.Buffer, StubMsg.BufferStart);

    use_pointer_ids = (*(unsigned int *)StubMsg.BufferStart != (UINT_PTR)&ch);
    trace("Pointer marshalling using %s\n", use_pointer_ids ? "pointer ids" : "pointer value");

    HeapFree(GetProcessHeap(), 0, StubMsg.BufferStart);
}
