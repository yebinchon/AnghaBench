
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;
typedef int HRESULT ;


 int ARRAY_SIZE (char**) ;
 int ERROR_INSUFFICIENT_BUFFER ;
 int E_INVALIDARG ;
 char GUID_MetadataFormatUnknown ;
 char GUID_MetadataFormatXMP ;
 char GUID_MetadataFormatXMPStruct ;
 int HRESULT_FROM_WIN32 (int ) ;
 scalar_t__ IsEqualGUID (char*,char*) ;
 int S_OK ;
 int WICMapSchemaToName (char*,char*,int,char*,int*) ;
 int WINCODEC_ERR_PROPERTYNOTFOUND ;
 char** guid_list ;
 int lstrcmpW (char*,char const*) ;
 int ok (int,char*,int,...) ;
 char** schema_list ;
 int win_skip (char*) ;
 int wine_dbgstr_guid (char*) ;
 int wine_dbgstr_w (char*) ;

__attribute__((used)) static void test_WICMapSchemaToName(void)
{
    static const WCHAR xmW[] = { 'x','m',0 };
    static const WCHAR xmpW[] = { 'x','m','p',0 };
    static WCHAR schemaW[] = { 'h','t','t','p',':','/','/','n','s','.','a','d','o','b','e','.','c','o','m','/','x','a','p','/','1','.','0','/',0 };
    static WCHAR SCHEMAW[] = { 'H','T','T','P',':','/','/','n','s','.','a','d','o','b','e','.','c','o','m','/','x','a','p','/','1','.','0','/',0 };
    HRESULT hr;
    UINT len, i, j;
    WCHAR name[16];

    hr = WICMapSchemaToName(&GUID_MetadataFormatUnknown, ((void*)0), 0, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "got %#x\n", hr);

    hr = WICMapSchemaToName(&GUID_MetadataFormatUnknown, schemaW, 0, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "got %#x\n", hr);

    hr = WICMapSchemaToName(&GUID_MetadataFormatUnknown, schemaW, 0, ((void*)0), &len);
    ok(hr == WINCODEC_ERR_PROPERTYNOTFOUND, "got %#x\n", hr);

    hr = WICMapSchemaToName(((void*)0), schemaW, 0, ((void*)0), &len);
    ok(hr == E_INVALIDARG, "got %#x\n", hr);

    hr = WICMapSchemaToName(&GUID_MetadataFormatXMP, schemaW, 0, ((void*)0), ((void*)0));
    ok(hr == E_INVALIDARG, "got %#x\n", hr);

    len = 0xdeadbeef;
    hr = WICMapSchemaToName(&GUID_MetadataFormatXMP, schemaW, 0, ((void*)0), &len);
    ok(hr == S_OK, "got %#x\n", hr);
    ok(len == 4, "got %u\n", len);

    len = 0xdeadbeef;
    hr = WICMapSchemaToName(&GUID_MetadataFormatXMP, schemaW, 4, ((void*)0), &len);
    ok(hr == S_OK, "got %#x\n", hr);
    ok(len == 4, "got %u\n", len);

    len = 0xdeadbeef;
    hr = WICMapSchemaToName(&GUID_MetadataFormatXMP, SCHEMAW, 0, ((void*)0), &len);
    ok(hr == WINCODEC_ERR_PROPERTYNOTFOUND, "got %#x\n", hr);
    ok(len == 0xdeadbeef, "got %u\n", len);

    name[0] = 0;
    len = 0xdeadbeef;
    hr = WICMapSchemaToName(&GUID_MetadataFormatXMP, schemaW, 4, name, &len);
    ok(hr == S_OK, "got %#x\n", hr);
    ok(len == 4, "got %u\n", len);
    ok(!lstrcmpW(name, xmpW), "got %s\n", wine_dbgstr_w(name));

    len = 0xdeadbeef;
    hr = WICMapSchemaToName(&GUID_MetadataFormatXMP, schemaW, 0, name, &len);
    ok(hr == E_INVALIDARG, "got %#x\n", hr);
    ok(len == 0xdeadbeef, "got %u\n", len);

    name[0] = 0;
    len = 0xdeadbeef;
    hr = WICMapSchemaToName(&GUID_MetadataFormatXMP, schemaW, 3, name, &len);
    ok(hr == HRESULT_FROM_WIN32(ERROR_INSUFFICIENT_BUFFER), "got %#x\n", hr);
    ok(len == 0xdeadbeef, "got %u\n", len);
    ok(!lstrcmpW(name, xmW), "got %s\n", wine_dbgstr_w(name));

    hr = WICMapSchemaToName(&GUID_MetadataFormatXMP, schemaW, 4, name, ((void*)0));
    ok(hr == E_INVALIDARG, "got %#x\n", hr);


    hr = WICMapSchemaToName(&GUID_MetadataFormatXMP, schema_list[0], 0, ((void*)0), &len);
    if (hr == WINCODEC_ERR_PROPERTYNOTFOUND)
    {
        win_skip("Modern schemas are not supported\n");
        return;
    }

    for (i = 0; i < ARRAY_SIZE(guid_list); i++)
    {
        for (j = 0; j < ARRAY_SIZE(schema_list); j++)
        {
            hr = WICMapSchemaToName(guid_list[i], schema_list[j], 0, ((void*)0), &len);
            if (IsEqualGUID(guid_list[i], &GUID_MetadataFormatXMP) ||
                IsEqualGUID(guid_list[i], &GUID_MetadataFormatXMPStruct))
            {
                ok(hr == S_OK, "%u: %u: format %s does not support schema %s\n",
                   i, j, wine_dbgstr_guid(guid_list[i]), wine_dbgstr_w(schema_list[j]));
            }
            else
            {
                ok(hr == WINCODEC_ERR_PROPERTYNOTFOUND, "%u: %u: format %s supports schema %s\n",
                   i, j, wine_dbgstr_guid(guid_list[i]), wine_dbgstr_w(schema_list[j]));
            }
        }
    }
}
