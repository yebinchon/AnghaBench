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
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  GUID_ContainerFormatGif ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC4 (void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  factory ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static IWICBitmapDecoder *FUNC7(const void *image_data, UINT image_size)
{
    HRESULT hr;
    IWICBitmapDecoder *decoder;
    IStream *stream;
    GUID format;
    LONG refcount;

    stream = FUNC4(image_data, image_size);
    if (!stream) return NULL;

    hr = FUNC2(factory, stream, NULL, 0, &decoder);
    FUNC5(hr == S_OK, "CreateDecoderFromStream error %#x\n", hr);

    hr = FUNC1(decoder, &format);
    FUNC5(hr == S_OK, "GetContainerFormat error %#x\n", hr);
    FUNC5(FUNC3(&format, &GUID_ContainerFormatGif),
       "wrong container format %s\n", FUNC6(&format));

    refcount = FUNC0(stream);
    FUNC5(refcount > 0, "expected stream refcount > 0\n");

    return decoder;
}