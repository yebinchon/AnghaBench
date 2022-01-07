
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* wireHWND ;
struct TYPE_7__ {int Flags; } ;
typedef TYPE_3__ USER_MARSHAL_CB ;
typedef int ULONG ;
struct TYPE_5__ {scalar_t__ hInproc; int hRemote; } ;
struct TYPE_6__ {TYPE_1__ u; int fContext; } ;
typedef int RPC_MESSAGE ;
typedef int MIDL_STUB_MESSAGE ;
typedef scalar_t__ LONG_PTR ;
typedef scalar_t__ HWND ;


 scalar_t__ GetDesktopWindow () ;
 int GetProcessHeap () ;
 int HWND_UserFree (int *,scalar_t__*) ;
 unsigned char* HWND_UserMarshal (int *,unsigned char*,scalar_t__*) ;
 int HWND_UserSize (int *,int,scalar_t__*) ;
 unsigned char* HWND_UserUnmarshal (int *,unsigned char*,scalar_t__*) ;
 unsigned char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,unsigned char*) ;
 int MSHCTX_LOCAL ;
 int WDT_INPROC_CALL ;
 int init_user_marshal_cb (TYPE_3__*,int *,int *,unsigned char*,int,int ) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_marshal_HWND(void)
{
    USER_MARSHAL_CB umcb;
    MIDL_STUB_MESSAGE stub_msg;
    RPC_MESSAGE rpc_msg;
    unsigned char *buffer, *buffer_end;
    ULONG size;
    HWND hwnd = GetDesktopWindow();
    HWND hwnd2;
    wireHWND wirehwnd;

    init_user_marshal_cb(&umcb, &stub_msg, &rpc_msg, ((void*)0), 0, MSHCTX_LOCAL);
    size = HWND_UserSize(&umcb.Flags, 1, &hwnd);
    ok(size == 4 + sizeof(*wirehwnd), "Wrong size %d\n", size);

    buffer = HeapAlloc(GetProcessHeap(), 0, size);
    init_user_marshal_cb(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
    buffer_end = HWND_UserMarshal(&umcb.Flags, buffer + 1, &hwnd);
    ok(buffer_end == buffer + size, "got %p buffer %p\n", buffer_end, buffer);
    wirehwnd = (wireHWND)(buffer + 4);
    ok(wirehwnd->fContext == WDT_INPROC_CALL, "Context should be WDT_INPROC_CALL instead of 0x%08x\n", wirehwnd->fContext);
    ok(wirehwnd->u.hInproc == (LONG_PTR)hwnd, "Marshaled value should be %p instead of %x\n", hwnd, wirehwnd->u.hRemote);

    init_user_marshal_cb(&umcb, &stub_msg, &rpc_msg, buffer, size, MSHCTX_LOCAL);
    buffer_end = HWND_UserUnmarshal(&umcb.Flags, buffer + 1, &hwnd2);
    ok(buffer_end == buffer + size, "got %p buffer %p\n", buffer_end, buffer);
    ok(hwnd == hwnd2, "Didn't unmarshal properly\n");
    HeapFree(GetProcessHeap(), 0, buffer);

    init_user_marshal_cb(&umcb, &stub_msg, &rpc_msg, ((void*)0), 0, MSHCTX_LOCAL);
    HWND_UserFree(&umcb.Flags, &hwnd2);
}
