
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HWND ;
typedef int HRESULT ;
typedef int * HANDLE ;


 int CO_E_NOTINITIALIZED ;
 int CW_USEDEFAULT ;
 int * CreateWindowA (char*,char*,int ,int ,int ,int ,int ,int *,int *,int *,int *) ;
 int DRAGDROP_E_ALREADYREGISTERED ;
 int DRAGDROP_E_INVALIDHWND ;
 int DestroyWindow (int *) ;
 int DropTarget ;
 int E_INVALIDARG ;
 int E_OUTOFMEMORY ;
 int * GetPropA (int *,char*) ;
 int OleInitialize (int *) ;
 int OleUninitialize () ;
 int RegisterDragDrop (int *,int *) ;
 int RevokeDragDrop (int *) ;
 int S_OK ;
 scalar_t__ broken (int) ;
 int droptarget_refs ;
 int ok (int,char*,...) ;
 int ok_ole_success (int,char*) ;

__attribute__((used)) static void test_Register_Revoke(void)
{
    HANDLE prop;
    HRESULT hr;
    HWND hwnd;

    hwnd = CreateWindowA("WineOleTestClass", "Test", 0,
        CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, ((void*)0),
        ((void*)0), ((void*)0), ((void*)0));

    hr = RegisterDragDrop(hwnd, &DropTarget);
    ok(hr == E_OUTOFMEMORY ||
        broken(hr == CO_E_NOTINITIALIZED),
        "RegisterDragDrop without OLE initialized should have returned E_OUTOFMEMORY instead of 0x%08x\n", hr);

    OleInitialize(((void*)0));

    hr = RegisterDragDrop(hwnd, ((void*)0));
    ok(hr == E_INVALIDARG, "RegisterDragDrop with NULL IDropTarget * should return E_INVALIDARG instead of 0x%08x\n", hr);

    hr = RegisterDragDrop(((void*)0), &DropTarget);
    ok(hr == DRAGDROP_E_INVALIDHWND, "RegisterDragDrop with NULL hwnd should return DRAGDROP_E_INVALIDHWND instead of 0x%08x\n", hr);

    hr = RegisterDragDrop((HWND)0xdeadbeef, &DropTarget);
    ok(hr == DRAGDROP_E_INVALIDHWND, "RegisterDragDrop with garbage hwnd should return DRAGDROP_E_INVALIDHWND instead of 0x%08x\n", hr);

    ok(droptarget_refs == 0, "DropTarget refs should be zero not %d\n", droptarget_refs);
    hr = RegisterDragDrop(hwnd, &DropTarget);
    ok_ole_success(hr, "RegisterDragDrop");
    ok(droptarget_refs >= 1, "DropTarget refs should be at least one\n");

    prop = GetPropA(hwnd, "OleDropTargetInterface");
    ok(prop == &DropTarget, "expected IDropTarget pointer %p, got %p\n", &DropTarget, prop);

    hr = RegisterDragDrop(hwnd, &DropTarget);
    ok(hr == DRAGDROP_E_ALREADYREGISTERED, "RegisterDragDrop with already registered hwnd should return DRAGDROP_E_ALREADYREGISTERED instead of 0x%08x\n", hr);

    ok(droptarget_refs >= 1, "DropTarget refs should be at least one\n");
    OleUninitialize();


    if (droptarget_refs >= 1)
    {
        hr = RevokeDragDrop(hwnd);
        ok_ole_success(hr, "RevokeDragDrop");
        ok(droptarget_refs == 0 ||
           broken(droptarget_refs == 1),
           "DropTarget refs should be zero not %d\n", droptarget_refs);
    }

    hr = RevokeDragDrop(((void*)0));
    ok(hr == DRAGDROP_E_INVALIDHWND, "RevokeDragDrop with NULL hwnd should return DRAGDROP_E_INVALIDHWND instead of 0x%08x\n", hr);

    DestroyWindow(hwnd);


    OleInitialize(((void*)0));

    hwnd = CreateWindowA("WineOleTestClass", "Test", 0,
        CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, ((void*)0),
        ((void*)0), ((void*)0), ((void*)0));

    hr = RegisterDragDrop(hwnd, &DropTarget);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    DestroyWindow(hwnd);

    hr = RevokeDragDrop(hwnd);
    ok(hr == DRAGDROP_E_INVALIDHWND, "got 0x%08x\n", hr);

    OleUninitialize();
}
