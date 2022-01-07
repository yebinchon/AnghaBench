
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* wireHBRUSH ;
struct TYPE_9__ {int Flags; } ;
typedef TYPE_3__ USER_MARSHAL_CB ;
typedef int ULONG ;
struct TYPE_10__ {scalar_t__ lbHatch; int lbColor; int lbStyle; } ;
struct TYPE_7__ {scalar_t__ hInproc; int hRemote; } ;
struct TYPE_8__ {TYPE_1__ u; int fContext; } ;
typedef int RPC_MESSAGE ;
typedef int MIDL_STUB_MESSAGE ;
typedef scalar_t__ LONG_PTR ;
typedef TYPE_4__ LOGBRUSH ;
typedef scalar_t__ HBRUSH ;


 int BS_SOLID ;
 scalar_t__ CreateBrushIndirect (TYPE_4__*) ;
 int DeleteObject (scalar_t__) ;
 int GetProcessHeap () ;
 int HBRUSH_UserFree (int *,scalar_t__*) ;
 unsigned char* HBRUSH_UserMarshal (int *,unsigned char*,scalar_t__*) ;
 int HBRUSH_UserSize (int *,int,scalar_t__*) ;
 unsigned char* HBRUSH_UserUnmarshal (int *,unsigned char*,scalar_t__*) ;
 unsigned char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,unsigned char*) ;
 int MSHCTX_LOCAL ;
 int RGB (int ,int ,int ) ;
 int WDT_INPROC_CALL ;
 int init_user_marshal_cb (TYPE_3__*,int *,int *,unsigned char*,int,int ) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_marshal_HBRUSH(void)
{
    MIDL_STUB_MESSAGE stub_msg;
    HBRUSH hBrush, hBrush2;
    USER_MARSHAL_CB umcb;
    RPC_MESSAGE rpc_msg;
    unsigned char *buffer, *buffer_end;
    LOGBRUSH logbrush;
    wireHBRUSH wirehbrush;
    ULONG size;

    logbrush.lbStyle = BS_SOLID;
    logbrush.lbColor = RGB(0, 0, 0);
    logbrush.lbHatch = 0;

    hBrush = CreateBrushIndirect(&logbrush);
    ok(hBrush != 0, "CreateBrushIndirect failed\n");

    init_user_marshal_cb(&umcb, &stub_msg, &rpc_msg, ((void*)0), 0, MSHCTX_LOCAL);
    size = HBRUSH_UserSize(&umcb.Flags, 1, &hBrush);
    ok(size == 4 + sizeof(*wirehbrush), "Wrong size %d\n", size);

    buffer = HeapAlloc(GetProcessHeap(), 0, size);
    init_user_marshal_cb(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
    buffer_end = HBRUSH_UserMarshal(&umcb.Flags, buffer + 1, &hBrush);
    ok(buffer_end == buffer + 4 + sizeof(*wirehbrush), "got %p buffer %p\n", buffer_end, buffer);
    wirehbrush = (wireHBRUSH)(buffer + 4);
    ok(wirehbrush->fContext == WDT_INPROC_CALL, "Context should be WDT_INPROC_CALL instead of 0x%08x\n", wirehbrush->fContext);
    ok(wirehbrush->u.hInproc == (LONG_PTR)hBrush, "Marshaled value should be %p instead of %x\n", hBrush, wirehbrush->u.hRemote);

    init_user_marshal_cb(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
    buffer_end = HBRUSH_UserUnmarshal(&umcb.Flags, buffer + 1, &hBrush2);
    ok(buffer_end == buffer + 4 + sizeof(*wirehbrush), "got %p buffer %p\n", buffer_end, buffer);
    ok(hBrush == hBrush2, "Didn't unmarshal properly\n");
    HeapFree(GetProcessHeap(), 0, buffer);

    init_user_marshal_cb(&umcb, &stub_msg, &rpc_msg, ((void*)0), 0, MSHCTX_LOCAL);
    HBRUSH_UserFree(&umcb.Flags, &hBrush2);
    DeleteObject(hBrush);
}
