#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int Width; int Height; scalar_t__ Y; scalar_t__ X; } ;
typedef  TYPE_1__ WICRect ;
struct TYPE_6__ {int width; int height; int /*<<< orphan*/ * bits; int /*<<< orphan*/  dpiY; int /*<<< orphan*/  dpiX; } ;
typedef  TYPE_2__ IcoFrameDecode ;
typedef  int /*<<< orphan*/  IWICBitmapSource ;
typedef  int /*<<< orphan*/  IWICBitmapFrameDecode ;
typedef  int /*<<< orphan*/  IWICBitmapDecoder ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GUID_WICPixelFormat32bppBGRA ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IID_IWICBitmapDecoder ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  WICDecodeMetadataCacheOnLoad ; 

__attribute__((used)) static HRESULT FUNC13(IStream *stream, IcoFrameDecode *result)
{
    IWICBitmapDecoder *decoder = NULL;
    IWICBitmapFrameDecode *sourceFrame = NULL;
    IWICBitmapSource *sourceBitmap = NULL;
    WICRect rect;
    HRESULT hr;

    hr = FUNC11(&IID_IWICBitmapDecoder, (void**)&decoder);
    if (FUNC0(hr))
        goto end;
    hr = FUNC4(decoder, stream, WICDecodeMetadataCacheOnLoad);
    if (FUNC0(hr))
        goto end;
    hr = FUNC3(decoder, 0, &sourceFrame);
    if (FUNC0(hr))
        goto end;
    hr = FUNC12(&GUID_WICPixelFormat32bppBGRA, (IWICBitmapSource*)sourceFrame, &sourceBitmap);
    if (FUNC0(hr))
        goto end;
    hr = FUNC7(sourceFrame, &result->width, &result->height);
    if (FUNC0(hr))
        goto end;
    hr = FUNC6(sourceFrame, &result->dpiX, &result->dpiY);
    if (FUNC0(hr))
        goto end;
    result->bits = FUNC2(FUNC1(), 0, 4 * result->width * result->height);
    if (result->bits == NULL)
    {
        hr = E_OUTOFMEMORY;
        goto end;
    }
    rect.X = 0;
    rect.Y = 0;
    rect.Width = result->width;
    rect.Height = result->height;
    hr = FUNC9(sourceBitmap, &rect, 4*result->width,
                                     4*result->width*result->height, result->bits);

end:
    if (decoder != NULL)
        FUNC5(decoder);
    if (sourceFrame != NULL)
        FUNC8(sourceFrame);
    if (sourceBitmap != NULL)
        FUNC10(sourceBitmap);
    return hr;
}