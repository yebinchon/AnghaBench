
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msxmlsupported_data_t {scalar_t__ clsid; int name; } ;
typedef char WCHAR ;
typedef int ISAXAttributes ;
typedef int IMXAttributes ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_SAXAttributes ;
 int CLSID_SAXAttributes30 ;
 int CoCreateInstance (scalar_t__,int *,int ,int *,void**) ;
 int EXPECT_HR (int ,int ) ;
 int E_INVALIDARG ;
 int E_POINTER ;
 int IID_IMXAttributes ;
 int IID_ISAXAttributes ;
 int IMXAttributes_QueryInterface (int *,int *,void**) ;
 int IMXAttributes_Release (int *) ;
 int IMXAttributes_addAttribute (int *,int ,int ,int ,int ,int ) ;
 int ISAXAttributes_Release (int *) ;
 int ISAXAttributes_getIndexFromName (int *,char const*,int ,char const*,int ,int*) ;
 scalar_t__ IsEqualGUID (scalar_t__,int *) ;
 int S_OK ;
 int _bstr_ (char*) ;
 int free_bstrs () ;
 int is_clsid_supported (scalar_t__,int ) ;
 int lstrlenW (char const*) ;
 int mxattributes_support_data ;
 int ok (int,char*,int ,int) ;
 struct msxmlsupported_data_t* saxattr_support_data ;

__attribute__((used)) static void test_mxattr_localname(void)
{
    static const WCHAR localname1W[] = {'l','o','c','a','l','n','a','m','e','1',0};
    static const WCHAR localnameW[] = {'l','o','c','a','l','n','a','m','e',0};
    static const WCHAR uri1W[] = {'u','r','i','1',0};
    static const WCHAR uriW[] = {'u','r','i',0};

    const struct msxmlsupported_data_t *table = saxattr_support_data;

    while (table->clsid)
    {
        ISAXAttributes *saxattr;
        IMXAttributes *mxattr;
        HRESULT hr;
        int index;

        if (!is_clsid_supported(table->clsid, mxattributes_support_data))
        {
            table++;
            continue;
        }

        hr = CoCreateInstance(table->clsid, ((void*)0), CLSCTX_INPROC_SERVER,
            &IID_IMXAttributes, (void**)&mxattr);
        EXPECT_HR(hr, S_OK);

        hr = IMXAttributes_QueryInterface(mxattr, &IID_ISAXAttributes, (void**)&saxattr);
        EXPECT_HR(hr, S_OK);

        hr = ISAXAttributes_getIndexFromName(saxattr, ((void*)0), 0, ((void*)0), 0, &index);
        EXPECT_HR(hr, E_INVALIDARG);


        hr = IMXAttributes_addAttribute(mxattr, _bstr_("uri"), _bstr_("localname"),
            _bstr_("a:localname"), _bstr_(""), _bstr_("value"));
        EXPECT_HR(hr, S_OK);
        hr = IMXAttributes_addAttribute(mxattr, _bstr_("uri"), _bstr_("localname"),
            _bstr_("b:localname"), _bstr_(""), _bstr_("value"));
        EXPECT_HR(hr, S_OK);

        index = -1;
        hr = ISAXAttributes_getIndexFromName(saxattr, uriW, lstrlenW(uriW), localnameW, lstrlenW(localnameW), &index);
        EXPECT_HR(hr, S_OK);
        ok(index == 0, "%s: got index %d\n", table->name, index);

        index = -1;
        hr = ISAXAttributes_getIndexFromName(saxattr, uri1W, lstrlenW(uri1W), localnameW, lstrlenW(localnameW), &index);
        EXPECT_HR(hr, E_INVALIDARG);
        ok(index == -1, "%s: got index %d\n", table->name, index);

        index = -1;
        hr = ISAXAttributes_getIndexFromName(saxattr, uriW, lstrlenW(uriW), localname1W, lstrlenW(localname1W), &index);
        EXPECT_HR(hr, E_INVALIDARG);
        ok(index == -1, "%s: got index %d\n", table->name, index);

        if (IsEqualGUID(table->clsid, &CLSID_SAXAttributes) ||
            IsEqualGUID(table->clsid, &CLSID_SAXAttributes30))
        {
            hr = ISAXAttributes_getIndexFromName(saxattr, ((void*)0), 0, ((void*)0), 0, ((void*)0));
            EXPECT_HR(hr, E_POINTER);

            hr = ISAXAttributes_getIndexFromName(saxattr, uriW, lstrlenW(uriW), localname1W, lstrlenW(localname1W), ((void*)0));
            EXPECT_HR(hr, E_POINTER);
        }
        else
        {
            hr = ISAXAttributes_getIndexFromName(saxattr, ((void*)0), 0, ((void*)0), 0, ((void*)0));
            EXPECT_HR(hr, E_INVALIDARG);

            hr = ISAXAttributes_getIndexFromName(saxattr, uriW, lstrlenW(uriW), localname1W, lstrlenW(localname1W), ((void*)0));
            EXPECT_HR(hr, E_INVALIDARG);
        }

        hr = ISAXAttributes_getIndexFromName(saxattr, uriW, lstrlenW(uriW), ((void*)0), 0, &index);
        EXPECT_HR(hr, E_INVALIDARG);

        hr = ISAXAttributes_getIndexFromName(saxattr, ((void*)0), 0, localname1W, lstrlenW(localname1W), &index);
        EXPECT_HR(hr, E_INVALIDARG);

        table++;

        ISAXAttributes_Release(saxattr);
        IMXAttributes_Release(mxattr);
        free_bstrs();
    }
}
