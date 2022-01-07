
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ VARIANT_BOOL ;
typedef int IXMLDOMSchemaCollection2 ;
typedef int HRESULT ;


 int EXPECT_HR (int ,int ) ;
 int E_POINTER ;
 int IID_IXMLDOMSchemaCollection2 ;
 int IXMLDOMSchemaCollection2_Release (int *) ;
 int IXMLDOMSchemaCollection2_get_validateOnLoad (int *,scalar_t__*) ;
 int S_OK ;
 scalar_t__ VARIANT_FALSE ;
 scalar_t__ VARIANT_TRUE ;
 int * create_cache_version (int,int *) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_validate_on_load(void)
{
    IXMLDOMSchemaCollection2 *cache;
    VARIANT_BOOL b;
    HRESULT hr;

    cache = create_cache_version(40, &IID_IXMLDOMSchemaCollection2);
    if (!cache) return;

    hr = IXMLDOMSchemaCollection2_get_validateOnLoad(cache, ((void*)0));
    EXPECT_HR(hr, E_POINTER);

    b = VARIANT_FALSE;
    hr = IXMLDOMSchemaCollection2_get_validateOnLoad(cache, &b);
    EXPECT_HR(hr, S_OK);
    ok(b == VARIANT_TRUE, "got %d\n", b);

    IXMLDOMSchemaCollection2_Release(cache);
}
