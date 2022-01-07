
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXMLDOMSchemaCollection2 ;
typedef int IUnknown ;
typedef scalar_t__ HRESULT ;


 int CLSID_XMLSchemaCache60 ;
 int IID_IXMLDOMSchemaCollection2 ;
 int IUnknown_Release (int *) ;
 scalar_t__ IXMLDOMSchemaCollection2_QueryInterface (int *,int *,void**) ;
 int IXMLDOMSchemaCollection2_Release (int *) ;
 scalar_t__ S_OK ;
 int * create_cache_version (int,int *) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_ifaces(void)
{
    IXMLDOMSchemaCollection2 *cache;
    IUnknown *unk;
    HRESULT hr;

    cache = create_cache_version(60, &IID_IXMLDOMSchemaCollection2);
    if (!cache) return;


    hr = IXMLDOMSchemaCollection2_QueryInterface(cache, &CLSID_XMLSchemaCache60, (void**)&unk);
    ok (hr == S_OK, "Could not get CLSID_XMLSchemaCache60 iface: %08x\n", hr);
    ok (unk == (IUnknown*)cache, "unk != cache\n");

    IUnknown_Release(unk);
    IXMLDOMSchemaCollection2_Release(cache);
}
