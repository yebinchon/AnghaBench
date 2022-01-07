
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * pFormatTypes; } ;
struct TYPE_10__ {int BufferLength; int BufferStart; int Buffer; TYPE_1__* RpcMsg; } ;
struct TYPE_9__ {int Buffer; } ;
typedef int RPC_MESSAGE ;
typedef TYPE_2__ MIDL_STUB_MESSAGE ;
typedef TYPE_3__ MIDL_STUB_DESC ;
typedef int LONG ;


 int FC_LONG ;
 int GetProcessHeap () ;
 int HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int) ;
 int NdrClientInitializeNew (int *,TYPE_2__*,TYPE_3__*,int ) ;
 int NdrSimpleTypeMarshall (TYPE_2__*,unsigned char*,int ) ;
 int NdrSimpleTypeUnmarshall (TYPE_2__*,unsigned char*,int ) ;
 TYPE_3__ Object_StubDesc ;
 int ok (int,char*,int,...) ;

__attribute__((used)) static void test_ndr_simple_type(void)
{
    RPC_MESSAGE RpcMessage;
    MIDL_STUB_MESSAGE StubMsg;
    MIDL_STUB_DESC StubDesc;
    LONG l, l2 = 0;

    StubDesc = Object_StubDesc;
    StubDesc.pFormatTypes = ((void*)0);

    NdrClientInitializeNew(
                           &RpcMessage,
                           &StubMsg,
                           &StubDesc,
                           0);

    StubMsg.BufferLength = 16;
    StubMsg.RpcMsg->Buffer = StubMsg.BufferStart = StubMsg.Buffer = HeapAlloc(GetProcessHeap(), 0, StubMsg.BufferLength);
    l = 0xcafebabe;
    NdrSimpleTypeMarshall(&StubMsg, (unsigned char*)&l, FC_LONG);
    ok(StubMsg.Buffer == StubMsg.BufferStart + 4, "%p %p\n", StubMsg.Buffer, StubMsg.BufferStart);
    ok(*(LONG*)StubMsg.BufferStart == l, "%d\n", *(LONG*)StubMsg.BufferStart);

    StubMsg.Buffer = StubMsg.BufferStart + 1;
    NdrSimpleTypeMarshall(&StubMsg, (unsigned char*)&l, FC_LONG);
    ok(StubMsg.Buffer == StubMsg.BufferStart + 8, "%p %p\n", StubMsg.Buffer, StubMsg.BufferStart);
    ok(*(LONG*)(StubMsg.BufferStart + 4) == l, "%d\n", *(LONG*)StubMsg.BufferStart);

    StubMsg.Buffer = StubMsg.BufferStart + 1;
    NdrSimpleTypeUnmarshall(&StubMsg, (unsigned char*)&l2, FC_LONG);
    ok(StubMsg.Buffer == StubMsg.BufferStart + 8, "%p %p\n", StubMsg.Buffer, StubMsg.BufferStart);
    ok(l2 == l, "%d\n", l2);

    HeapFree(GetProcessHeap(), 0, StubMsg.BufferStart);
}
