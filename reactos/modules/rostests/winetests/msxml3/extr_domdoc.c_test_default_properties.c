
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clsid; int value; int property; scalar_t__ guid; } ;
typedef TYPE_1__ property_test_t ;
typedef int VARIANT ;
typedef int IXMLDOMDocument2 ;
typedef scalar_t__ HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 scalar_t__ CoCreateInstance (scalar_t__,int *,int ,int *,void**) ;
 int IID_IXMLDOMDocument2 ;
 int IXMLDOMDocument2_Release (int *) ;
 scalar_t__ IXMLDOMDocument2_getProperty (int *,int ,int *) ;
 scalar_t__ S_OK ;
 int V_BSTR (int *) ;
 int VariantClear (int *) ;
 int _bstr_ (int ) ;
 int is_clsid_supported (scalar_t__,int *) ;
 scalar_t__ lstrcmpW (int ,int ) ;
 int ok (int,char*,scalar_t__,...) ;
 TYPE_1__* properties_test_data ;

__attribute__((used)) static void test_default_properties(void)
{
    const property_test_t *entry = properties_test_data;

    while (entry->guid)
    {
        IXMLDOMDocument2 *doc;
        VARIANT var;
        HRESULT hr;

        if (!is_clsid_supported(entry->guid, &IID_IXMLDOMDocument2))
        {
            entry++;
            continue;
        }

        hr = CoCreateInstance(entry->guid, ((void*)0), CLSCTX_INPROC_SERVER, &IID_IXMLDOMDocument2, (void**)&doc);
        ok(hr == S_OK, "got 0x%08x\n", hr);

        hr = IXMLDOMDocument2_getProperty(doc, _bstr_(entry->property), &var);
        ok(hr == S_OK, "got 0x%08x\n", hr);
        ok(lstrcmpW(V_BSTR(&var), _bstr_(entry->value)) == 0, "expected %s, for %s\n",
           entry->value, entry->clsid);
        VariantClear(&var);

        IXMLDOMDocument2_Release(doc);

        entry++;
    }
}
