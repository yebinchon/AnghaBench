
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IShellView ;
typedef int IShellFolderView ;
typedef int IShellFolder ;
typedef int IDataObject ;
typedef int HRESULT ;


 int E_FAIL ;
 int E_NOTIMPL ;
 int * IDataObjectImpl_Construct () ;
 int IDataObject_Release (int *) ;
 int IID_IShellFolderView ;
 int IID_IShellView ;
 int IShellFolderView_MoveIcons (int *,int *) ;
 int IShellFolderView_QuerySupport (int *,int*) ;
 int IShellFolderView_Release (int *) ;
 int IShellFolderView_RemoveObject (int *,int *,int*) ;
 int IShellFolderView_SetRedraw (int *,int ) ;
 int IShellFolder_CreateViewObject (int *,int *,int *,void**) ;
 int IShellFolder_Release (int *) ;
 int IShellView_QueryInterface (int *,int *,void**) ;
 int IShellView_Release (int *) ;
 int SHGetDesktopFolder (int **) ;
 int S_OK ;
 int TRUE ;
 scalar_t__ broken (int) ;
 int ok (int,char*,int) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_IShellFolderView(void)
{
    IShellFolderView *folderview;
    IShellFolder *desktop;
    IShellView *view;
    IDataObject *obj;
    UINT i;
    HRESULT hr;

    hr = SHGetDesktopFolder(&desktop);
    ok(hr == S_OK, "got (0x%08x)\n", hr);

    hr = IShellFolder_CreateViewObject(desktop, ((void*)0), &IID_IShellView, (void**)&view);
    ok(hr == S_OK, "got (0x%08x)\n", hr);

    hr = IShellView_QueryInterface(view, &IID_IShellFolderView, (void**)&folderview);
    if (hr != S_OK)
    {
        win_skip("IShellView doesn't provide IShellFolderView on this platform\n");
        IShellView_Release(view);
        IShellFolder_Release(desktop);
        return;
    }


    obj = IDataObjectImpl_Construct();
    hr = IShellFolderView_MoveIcons(folderview, obj);
    ok(hr == E_NOTIMPL || broken(hr == S_OK) , "got (0x%08x)\n", hr);
    IDataObject_Release(obj);


    hr = IShellFolderView_SetRedraw(folderview, TRUE);
    ok(hr == S_OK, "got (0x%08x)\n", hr);


    hr = IShellFolderView_QuerySupport(folderview, ((void*)0));
    ok(hr == S_OK, "got (0x%08x)\n", hr);
    i = 0xdeadbeef;
    hr = IShellFolderView_QuerySupport(folderview, &i);
    ok(hr == S_OK, "got (0x%08x)\n", hr);
    ok(i == 0xdeadbeef, "got %d\n", i);


    i = 0xdeadbeef;
    hr = IShellFolderView_RemoveObject(folderview, ((void*)0), &i);
    ok(hr == S_OK || hr == E_FAIL, "got (0x%08x)\n", hr);
    if (hr == S_OK) ok(i == 0 || broken(i == 0xdeadbeef) ,
                       "got %d\n", i);

    IShellFolderView_Release(folderview);

    IShellView_Release(view);
    IShellFolder_Release(desktop);
}
