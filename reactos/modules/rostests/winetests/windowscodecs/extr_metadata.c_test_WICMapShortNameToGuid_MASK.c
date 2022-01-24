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
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  GUID_MetadataFormatUnknown ; 
 int /*<<< orphan*/  GUID_MetadataFormatXMP ; 
 int /*<<< orphan*/  GUID_NULL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC1 (unsigned char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ WINCODEC_ERR_PROPERTYNOTFOUND ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
    static const WCHAR unkW[] = { 'u','n','k',0 };
    static const WCHAR xmpW[] = { 'x','m','p',0 };
    static const WCHAR XmPW[] = { 'X','m','P',0 };
    static const WCHAR unknownW[] = { 'u','n','k','n','o','w','n',0 };
    HRESULT hr;
    GUID guid;

    hr = FUNC1(NULL, NULL);
    FUNC2(hr == E_INVALIDARG, "got %#x\n", hr);

    hr = FUNC1(NULL, &guid);
    FUNC2(hr == E_INVALIDARG, "got %#x\n", hr);

    hr = FUNC1(unknownW, NULL);
    FUNC2(hr == E_INVALIDARG, "got %#x\n", hr);

    hr = FUNC1(unkW, &guid);
    FUNC2(hr == WINCODEC_ERR_PROPERTYNOTFOUND, "got %#x\n", hr);

    hr = FUNC1(unknownW, &guid);
    FUNC2(hr == S_OK, "got %#x\n", hr);
    FUNC2(FUNC0(&guid, &GUID_MetadataFormatUnknown), "got %s\n", FUNC3(&guid));

    hr = FUNC1(xmpW, &guid);
    FUNC2(hr == S_OK, "got %#x\n", hr);
    FUNC2(FUNC0(&guid, &GUID_MetadataFormatXMP), "got %s\n", FUNC3(&guid));

    guid = GUID_NULL;
    hr = FUNC1(XmPW, &guid);
    FUNC2(hr == S_OK, "got %#x\n", hr);
    FUNC2(FUNC0(&guid, &GUID_MetadataFormatXMP), "got %s\n", FUNC3(&guid));
}