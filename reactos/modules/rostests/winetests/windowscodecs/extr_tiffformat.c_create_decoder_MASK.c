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
typedef  int /*<<< orphan*/  UINT ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  IWICBitmapDecoder ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HGLOBAL ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  GUID_ContainerFormatTiff ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  factory ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC11(const void *image_data, UINT image_size, IWICBitmapDecoder **decoder)
{
    HGLOBAL hmem;
    BYTE *data;
    HRESULT hr;
    IStream *stream;
    GUID format;
    LONG refcount;

    *decoder = NULL;

    hmem = FUNC1(0, image_size);
    data = FUNC2(hmem);
    FUNC8(data, image_data, image_size);
    FUNC3(hmem);

    hr = FUNC0(hmem, TRUE, &stream);
    FUNC9(hr == S_OK, "CreateStreamOnHGlobal error %#x\n", hr);

    hr = FUNC6(factory, stream, NULL, 0, decoder);
    if (hr == S_OK)
    {
        hr = FUNC5(*decoder, &format);
        FUNC9(hr == S_OK, "GetContainerFormat error %#x\n", hr);
        FUNC9(FUNC7(&format, &GUID_ContainerFormatTiff),
           "wrong container format %s\n", FUNC10(&format));

        refcount = FUNC4(stream);
        FUNC9(refcount > 0, "expected stream refcount > 0\n");
    }

    return hr;
}