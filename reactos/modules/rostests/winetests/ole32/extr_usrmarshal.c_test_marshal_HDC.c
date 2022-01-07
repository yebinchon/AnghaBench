
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* wireHDC ;
struct TYPE_7__ {int Flags; } ;
typedef TYPE_3__ USER_MARSHAL_CB ;
typedef int ULONG ;
struct TYPE_5__ {scalar_t__ hInproc; int hRemote; } ;
struct TYPE_6__ {TYPE_1__ u; int fContext; } ;
typedef int RPC_MESSAGE ;
typedef int MIDL_STUB_MESSAGE ;
typedef scalar_t__ LONG_PTR ;
typedef scalar_t__ HDC ;


 scalar_t__ GetDC (int ) ;
 int GetProcessHeap () ;
 int HDC_UserFree (int *,scalar_t__*) ;
 unsigned char* HDC_UserMarshal (int *,unsigned char*,scalar_t__*) ;
 int HDC_UserSize (int *,int,scalar_t__*) ;
 unsigned char* HDC_UserUnmarshal (int *,unsigned char*,scalar_t__*) ;
 unsigned char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,unsigned char*) ;
 int MSHCTX_LOCAL ;
 int ReleaseDC (int ,scalar_t__) ;
 int WDT_INPROC_CALL ;
 int init_user_marshal_cb (TYPE_3__*,int *,int *,unsigned char*,int,int ) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_marshal_HDC(void)
{
    MIDL_STUB_MESSAGE stub_msg;
    HDC hdc = GetDC(0), hdc2;
    USER_MARSHAL_CB umcb;
    RPC_MESSAGE rpc_msg;
    unsigned char *buffer, *buffer_end;
    wireHDC wirehdc;
    ULONG size;

    init_user_marshal_cb(&umcb, &stub_msg, &rpc_msg, ((void*)0), 0, MSHCTX_LOCAL);
    size = HDC_UserSize(&umcb.Flags, 1, &hdc);
    ok(size == 4 + sizeof(*wirehdc), "Wrong size %d\n", size);

    buffer = HeapAlloc(GetProcessHeap(), 0, size);
    init_user_marshal_cb(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
    buffer_end = HDC_UserMarshal(&umcb.Flags, buffer + 1, &hdc);
    ok(buffer_end == buffer + 4 + sizeof(*wirehdc), "got %p buffer %p\n", buffer_end, buffer);
    wirehdc = (wireHDC)(buffer + 4);
    ok(wirehdc->fContext == WDT_INPROC_CALL, "Context should be WDT_INPROC_CALL instead of 0x%08x\n", wirehdc->fContext);
    ok(wirehdc->u.hInproc == (LONG_PTR)hdc, "Marshaled value should be %p instead of %x\n", hdc, wirehdc->u.hRemote);

    init_user_marshal_cb(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
    buffer_end = HDC_UserUnmarshal(&umcb.Flags, buffer + 1, &hdc2);
    ok(buffer_end == buffer + 4 + sizeof(*wirehdc), "got %p buffer %p\n", buffer_end, buffer);
    ok(hdc == hdc2, "Didn't unmarshal properly\n");
    HeapFree(GetProcessHeap(), 0, buffer);

    init_user_marshal_cb(&umcb, &stub_msg, &rpc_msg, ((void*)0), 0, MSHCTX_LOCAL);
    HDC_UserFree(&umcb.Flags, &hdc2);
    ReleaseDC(0, hdc);
}
