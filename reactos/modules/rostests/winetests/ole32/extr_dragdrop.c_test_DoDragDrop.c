
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ set_param; } ;
struct TYPE_6__ {scalar_t__ top; scalar_t__ left; } ;
typedef TYPE_1__ RECT ;
typedef int HWND ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;


 int ARRAY_SIZE (TYPE_2__**) ;
 int CW_USEDEFAULT ;
 int CreateWindowExA (int ,char*,char*,int ,int ,int ,int,int,int *,int *,int *,int *) ;
 int DataObject ;
 int DestroyWindow (int ) ;
 scalar_t__ DoDragDrop (int *,int *,scalar_t__,scalar_t__*) ;
 int DoDragDrop_effect_out ;
 int DoDragDrop_ret ;
 int DropSource ;
 int DropTarget ;
 scalar_t__ E_INVALIDARG ;
 int GetWindowRect (int ,TYPE_1__*) ;
 int IsWindow (int ) ;
 scalar_t__ OleInitialize (int *) ;
 int OleUninitialize () ;
 scalar_t__ RegisterDragDrop (int ,int *) ;
 int SW_SHOW ;
 scalar_t__ S_OK ;
 int SetCursorPos (scalar_t__,scalar_t__) ;
 int ShowWindow (int ,int ) ;
 int WS_EX_TOPMOST ;
 TYPE_2__** call_lists ;
 TYPE_2__* call_ptr ;
 int check_expect (int ,scalar_t__,int *) ;
 int ok (int,char*,...) ;
 int trace (char*,int) ;

__attribute__((used)) static void test_DoDragDrop(void)
{
    DWORD effect;
    HRESULT hr;
    HWND hwnd;
    RECT rect;
    int seq;

    hwnd = CreateWindowExA(WS_EX_TOPMOST, "WineOleTestClass", "Test", 0,
        CW_USEDEFAULT, CW_USEDEFAULT, 100, 100, ((void*)0),
        ((void*)0), ((void*)0), ((void*)0));
    ok(IsWindow(hwnd), "failed to create window\n");

    hr = OleInitialize(((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = RegisterDragDrop(hwnd, &DropTarget);
    ok(hr == S_OK, "got 0x%08x\n", hr);


    hr = DoDragDrop(((void*)0), ((void*)0), 0, ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = DoDragDrop(((void*)0), &DropSource, 0, ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = DoDragDrop(&DataObject, ((void*)0), 0, ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = DoDragDrop(((void*)0), ((void*)0), 0, &effect);
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = DoDragDrop(&DataObject, &DropSource, 0, ((void*)0));
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = DoDragDrop(((void*)0), &DropSource, 0, &effect);
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = DoDragDrop(&DataObject, ((void*)0), 0, &effect);
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    ShowWindow(hwnd, SW_SHOW);
    GetWindowRect(hwnd, &rect);
    ok(SetCursorPos(rect.left+50, rect.top+50), "SetCursorPos failed\n");

    for (seq = 0; seq < ARRAY_SIZE(call_lists); seq++)
    {
        DWORD effect_in;
        trace("%d\n", seq);
        call_ptr = call_lists[seq];
        effect_in = call_ptr->set_param;
        call_ptr++;

        hr = DoDragDrop(&DataObject, &DropSource, effect_in, &effect);
        check_expect(DoDragDrop_ret, hr, ((void*)0));
        check_expect(DoDragDrop_effect_out, effect, ((void*)0));
    }

    OleUninitialize();

    DestroyWindow(hwnd);
}
