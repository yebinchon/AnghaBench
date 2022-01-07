
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void WCHAR ;
typedef int ISAXAttributes ;
typedef int IMXAttributes ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_SAXAttributes ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int EXPECT_HR (int ,int ) ;
 int E_INVALIDARG ;
 int E_POINTER ;
 int IID_IMXAttributes ;
 int IID_ISAXAttributes ;
 int IMXAttributes_QueryInterface (int *,int *,void**) ;
 int IMXAttributes_Release (int *) ;
 int IMXAttributes_addAttribute (int *,int ,int ,int ,int ,int ) ;
 int IMXAttributes_clear (int *) ;
 int ISAXAttributes_Release (int *) ;
 int ISAXAttributes_getLength (int *,int*) ;
 int ISAXAttributes_getQName (int *,int ,void const**,int*) ;
 int S_OK ;
 int _bstr_ (char*) ;
 int free_bstrs () ;
 int lstrcmpW (void const*,int ) ;
 int ok (int,char*,void const*) ;
 void const* wine_dbgstr_w (void const*) ;

__attribute__((used)) static void test_mxattr_clear(void)
{
    ISAXAttributes *saxattr;
    IMXAttributes *mxattr;
    const WCHAR *ptr;
    HRESULT hr;
    int len;

    hr = CoCreateInstance(&CLSID_SAXAttributes, ((void*)0), CLSCTX_INPROC_SERVER,
        &IID_IMXAttributes, (void**)&mxattr);
    EXPECT_HR(hr, S_OK);

    hr = IMXAttributes_QueryInterface(mxattr, &IID_ISAXAttributes, (void**)&saxattr);
    EXPECT_HR(hr, S_OK);

    hr = ISAXAttributes_getQName(saxattr, 0, ((void*)0), ((void*)0));
    EXPECT_HR(hr, E_INVALIDARG);

    hr = ISAXAttributes_getQName(saxattr, 0, &ptr, &len);
    EXPECT_HR(hr, E_INVALIDARG);

    hr = IMXAttributes_clear(mxattr);
    EXPECT_HR(hr, S_OK);

    hr = IMXAttributes_addAttribute(mxattr, _bstr_("uri"), _bstr_("local"),
        _bstr_("qname"), _bstr_("type"), _bstr_("value"));
    EXPECT_HR(hr, S_OK);

    len = -1;
    hr = ISAXAttributes_getLength(saxattr, &len);
    EXPECT_HR(hr, S_OK);
    ok(len == 1, "got %d\n", len);

    len = -1;
    hr = ISAXAttributes_getQName(saxattr, 0, ((void*)0), &len);
    EXPECT_HR(hr, E_POINTER);
    ok(len == -1, "got %d\n", len);

    ptr = (void*)0xdeadbeef;
    hr = ISAXAttributes_getQName(saxattr, 0, &ptr, ((void*)0));
    EXPECT_HR(hr, E_POINTER);
    ok(ptr == (void*)0xdeadbeef, "got %p\n", ptr);

    len = 0;
    hr = ISAXAttributes_getQName(saxattr, 0, &ptr, &len);
    EXPECT_HR(hr, S_OK);
    ok(len == 5, "got %d\n", len);
    ok(!lstrcmpW(ptr, _bstr_("qname")), "got %s\n", wine_dbgstr_w(ptr));

    hr = IMXAttributes_clear(mxattr);
    EXPECT_HR(hr, S_OK);

    len = -1;
    hr = ISAXAttributes_getLength(saxattr, &len);
    EXPECT_HR(hr, S_OK);
    ok(len == 0, "got %d\n", len);

    len = -1;
    ptr = (void*)0xdeadbeef;
    hr = ISAXAttributes_getQName(saxattr, 0, &ptr, &len);
    EXPECT_HR(hr, E_INVALIDARG);
    ok(len == -1, "got %d\n", len);
    ok(ptr == (void*)0xdeadbeef, "got %p\n", ptr);

    IMXAttributes_Release(mxattr);
    ISAXAttributes_Release(saxattr);
    free_bstrs();
}
