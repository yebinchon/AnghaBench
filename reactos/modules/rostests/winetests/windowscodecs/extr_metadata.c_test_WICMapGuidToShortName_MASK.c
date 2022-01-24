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
typedef  unsigned char WCHAR ;
typedef  int UINT ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INSUFFICIENT_BUFFER ; 
 int E_INVALIDARG ; 
 int /*<<< orphan*/  GUID_MetadataFormatUnknown ; 
 int /*<<< orphan*/  GUID_NULL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int S_OK ; 
 int FUNC1 (int /*<<< orphan*/ *,int,unsigned char*,int*) ; 
 int WINCODEC_ERR_PROPERTYNOTFOUND ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 
 int FUNC4 (unsigned char*) ; 

__attribute__((used)) static void FUNC5(void)
{
    static const WCHAR unkW[] = { 'u','n','k',0 };
    static const WCHAR unknownW[] = { 'u','n','k','n','o','w','n',0 };
    HRESULT hr;
    UINT len;
    WCHAR name[16];

    name[0] = 0;
    len = 0xdeadbeef;
    hr = FUNC1(&GUID_MetadataFormatUnknown, 8, name, &len);
    FUNC3(hr == S_OK, "got %#x\n", hr);
    FUNC3(len == 8, "got %u\n", len);
    FUNC3(!FUNC2(name, unknownW), "got %s\n", FUNC4(name));

    name[0] = 0;
    hr = FUNC1(&GUID_MetadataFormatUnknown, 8, name, NULL);
    FUNC3(hr == S_OK, "got %#x\n", hr);
    FUNC3(!FUNC2(name, unknownW), "got %s\n", FUNC4(name));

    len = 0xdeadbeef;
    hr = FUNC1(&GUID_MetadataFormatUnknown, 8, NULL, &len);
    FUNC3(hr == S_OK, "got %#x\n", hr);
    FUNC3(len == 8, "got %u\n", len);

    len = 0xdeadbeef;
    hr = FUNC1(&GUID_MetadataFormatUnknown, 0, NULL, &len);
    FUNC3(hr == S_OK, "got %#x\n", hr);
    FUNC3(len == 8, "got %u\n", len);

    hr = FUNC1(&GUID_MetadataFormatUnknown, 0, NULL, NULL);
    FUNC3(hr == S_OK, "got %#x\n", hr);

    hr = FUNC1(&GUID_MetadataFormatUnknown, 8, NULL, NULL);
    FUNC3(hr == S_OK, "got %#x\n", hr);

    hr = FUNC1(&GUID_NULL, 0, NULL, NULL);
    FUNC3(hr == WINCODEC_ERR_PROPERTYNOTFOUND, "got %#x\n", hr);

    name[0] = 0;
    len = 0xdeadbeef;
    hr = FUNC1(&GUID_MetadataFormatUnknown, 4, name, &len);
    FUNC3(hr == FUNC0(ERROR_INSUFFICIENT_BUFFER), "got %#x\n", hr);
    FUNC3(len == 0xdeadbeef, "got %u\n", len);
    FUNC3(!FUNC2(name, unkW), "got %s\n", FUNC4(name));

    name[0] = 0;
    len = 0xdeadbeef;
    hr = FUNC1(&GUID_MetadataFormatUnknown, 0, name, &len);
    FUNC3(hr == E_INVALIDARG, "got %#x\n", hr);
    FUNC3(len == 0xdeadbeef, "got %u\n", len);
    FUNC3(!name[0], "got %s\n", FUNC4(name));

    hr = FUNC1(NULL, 8, name, NULL);
    FUNC3(hr == E_INVALIDARG, "got %#x\n", hr);
}