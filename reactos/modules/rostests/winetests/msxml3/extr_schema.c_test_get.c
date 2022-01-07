
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXMLDOMSchemaCollection2 ;
typedef int IXMLDOMNode ;
typedef scalar_t__ HRESULT ;


 int EXPECT_HR (scalar_t__,scalar_t__) ;
 scalar_t__ E_NOTIMPL ;
 scalar_t__ E_POINTER ;
 int IID_IXMLDOMSchemaCollection2 ;
 int IXMLDOMSchemaCollection2_Release (int *) ;
 scalar_t__ IXMLDOMSchemaCollection2_get (int *,int *,int **) ;
 scalar_t__ S_OK ;
 int * _bstr_ (char*) ;
 int * create_cache_version (int,int *) ;
 int free_bstrs () ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_get(void)
{
    IXMLDOMSchemaCollection2 *cache;
    IXMLDOMNode *node;
    HRESULT hr;

    cache = create_cache_version(60, &IID_IXMLDOMSchemaCollection2);
    if (!cache) return;

    hr = IXMLDOMSchemaCollection2_get(cache, ((void*)0), ((void*)0));
    ok(hr == E_NOTIMPL || hr == E_POINTER , "got %08x\n", hr);

    hr = IXMLDOMSchemaCollection2_get(cache, _bstr_("uri"), &node);
    EXPECT_HR(hr, E_NOTIMPL);

    IXMLDOMSchemaCollection2_Release(cache);

    cache = create_cache_version(40, &IID_IXMLDOMSchemaCollection2);
    if (!cache) return;

    hr = IXMLDOMSchemaCollection2_get(cache, ((void*)0), ((void*)0));
    EXPECT_HR(hr, E_POINTER);

    hr = IXMLDOMSchemaCollection2_get(cache, _bstr_("uri"), &node);
    EXPECT_HR(hr, S_OK);

    IXMLDOMSchemaCollection2_Release(cache);
    free_bstrs();
}
