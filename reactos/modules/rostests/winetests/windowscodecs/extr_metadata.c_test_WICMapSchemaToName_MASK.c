#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int /*<<< orphan*/  ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 char GUID_MetadataFormatUnknown ; 
 char GUID_MetadataFormatXMP ; 
 char GUID_MetadataFormatXMPStruct ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,char*,int*) ; 
 int /*<<< orphan*/  WINCODEC_ERR_PROPERTYNOTFOUND ; 
 char** guid_list ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 
 char** schema_list ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    static const WCHAR xmW[] = { 'x','m',0 };
    static const WCHAR xmpW[] = { 'x','m','p',0 };
    static WCHAR schemaW[] = { 'h','t','t','p',':','/','/','n','s','.','a','d','o','b','e','.','c','o','m','/','x','a','p','/','1','.','0','/',0 };
    static WCHAR SCHEMAW[] = { 'H','T','T','P',':','/','/','n','s','.','a','d','o','b','e','.','c','o','m','/','x','a','p','/','1','.','0','/',0 };
    HRESULT hr;
    UINT len, i, j;
    WCHAR name[16];

    hr = FUNC3(&GUID_MetadataFormatUnknown, NULL, 0, NULL, NULL);
    FUNC5(hr == E_INVALIDARG, "got %#x\n", hr);

    hr = FUNC3(&GUID_MetadataFormatUnknown, schemaW, 0, NULL, NULL);
    FUNC5(hr == E_INVALIDARG, "got %#x\n", hr);

    hr = FUNC3(&GUID_MetadataFormatUnknown, schemaW, 0, NULL, &len);
    FUNC5(hr == WINCODEC_ERR_PROPERTYNOTFOUND, "got %#x\n", hr);

    hr = FUNC3(NULL, schemaW, 0, NULL, &len);
    FUNC5(hr == E_INVALIDARG, "got %#x\n", hr);

    hr = FUNC3(&GUID_MetadataFormatXMP, schemaW, 0, NULL, NULL);
    FUNC5(hr == E_INVALIDARG, "got %#x\n", hr);

    len = 0xdeadbeef;
    hr = FUNC3(&GUID_MetadataFormatXMP, schemaW, 0, NULL, &len);
    FUNC5(hr == S_OK, "got %#x\n", hr);
    FUNC5(len == 4, "got %u\n", len);

    len = 0xdeadbeef;
    hr = FUNC3(&GUID_MetadataFormatXMP, schemaW, 4, NULL, &len);
    FUNC5(hr == S_OK, "got %#x\n", hr);
    FUNC5(len == 4, "got %u\n", len);

    len = 0xdeadbeef;
    hr = FUNC3(&GUID_MetadataFormatXMP, SCHEMAW, 0, NULL, &len);
    FUNC5(hr == WINCODEC_ERR_PROPERTYNOTFOUND, "got %#x\n", hr);
    FUNC5(len == 0xdeadbeef, "got %u\n", len);

    name[0] = 0;
    len = 0xdeadbeef;
    hr = FUNC3(&GUID_MetadataFormatXMP, schemaW, 4, name, &len);
    FUNC5(hr == S_OK, "got %#x\n", hr);
    FUNC5(len == 4, "got %u\n", len);
    FUNC5(!FUNC4(name, xmpW), "got %s\n", FUNC8(name));

    len = 0xdeadbeef;
    hr = FUNC3(&GUID_MetadataFormatXMP, schemaW, 0, name, &len);
    FUNC5(hr == E_INVALIDARG, "got %#x\n", hr);
    FUNC5(len == 0xdeadbeef, "got %u\n", len);

    name[0] = 0;
    len = 0xdeadbeef;
    hr = FUNC3(&GUID_MetadataFormatXMP, schemaW, 3, name, &len);
    FUNC5(hr == FUNC1(ERROR_INSUFFICIENT_BUFFER), "got %#x\n", hr);
    FUNC5(len == 0xdeadbeef, "got %u\n", len);
    FUNC5(!FUNC4(name, xmW), "got %s\n", FUNC8(name));

    hr = FUNC3(&GUID_MetadataFormatXMP, schemaW, 4, name, NULL);
    FUNC5(hr == E_INVALIDARG, "got %#x\n", hr);

    /* Check whether modern schemas are supported */
    hr = FUNC3(&GUID_MetadataFormatXMP, schema_list[0], 0, NULL, &len);
    if (hr == WINCODEC_ERR_PROPERTYNOTFOUND)
    {
        FUNC6("Modern schemas are not supported\n");
        return;
    }

    for (i = 0; i < FUNC0(guid_list); i++)
    {
        for (j = 0; j < FUNC0(schema_list); j++)
        {
            hr = FUNC3(guid_list[i], schema_list[j], 0, NULL, &len);
            if (FUNC2(guid_list[i], &GUID_MetadataFormatXMP) ||
                FUNC2(guid_list[i], &GUID_MetadataFormatXMPStruct))
            {
                FUNC5(hr == S_OK, "%u: %u: format %s does not support schema %s\n",
                   i, j, FUNC7(guid_list[i]), FUNC8(schema_list[j]));
            }
            else
            {
                FUNC5(hr == WINCODEC_ERR_PROPERTYNOTFOUND, "%u: %u: format %s supports schema %s\n",
                   i, j, FUNC7(guid_list[i]), FUNC8(schema_list[j]));
            }
        }
    }
}