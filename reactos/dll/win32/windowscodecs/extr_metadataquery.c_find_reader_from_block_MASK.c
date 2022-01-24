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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  IWICMetadataReader ;
typedef  int /*<<< orphan*/  IWICMetadataBlockReader ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ WINCODEC_ERR_PROPERTYNOTFOUND ; 

__attribute__((used)) static HRESULT FUNC5(IWICMetadataBlockReader *block_reader, UINT index,
                                      GUID *guid, IWICMetadataReader **reader)
{
    HRESULT hr;
    GUID format;
    IWICMetadataReader *new_reader;
    UINT count, i, matched_index;

    *reader = NULL;

    hr = FUNC0(block_reader, &count);
    if (hr != S_OK) return hr;

    matched_index = 0;

    for (i = 0; i < count; i++)
    {
        hr = FUNC1(block_reader, i, &new_reader);
        if (hr != S_OK) return hr;

        hr = FUNC2(new_reader, &format);
        if (hr == S_OK)
        {
            if (FUNC4(&format, guid))
            {
                if (matched_index == index)
                {
                    *reader = new_reader;
                    return S_OK;
                }

                matched_index++;
            }
        }

        FUNC3(new_reader);
        if (hr != S_OK) return hr;
    }

    return WINCODEC_ERR_PROPERTYNOTFOUND;
}