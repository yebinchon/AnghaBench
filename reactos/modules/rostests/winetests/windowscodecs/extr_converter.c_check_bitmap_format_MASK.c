#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WICPixelFormatGUID ;
typedef  int /*<<< orphan*/  ULARGE_INTEGER ;
struct TYPE_3__ {scalar_t__ QuadPart; } ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_WICBmpEncoder ; 
 int /*<<< orphan*/  CLSID_WICGifEncoder ; 
 int /*<<< orphan*/  CLSID_WICPngEncoder ; 
 int /*<<< orphan*/  CLSID_WICTiffEncoder ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC8(IStream *stream, const CLSID *encoder, const WICPixelFormatGUID *format)
{
    HRESULT hr;
    LARGE_INTEGER pos;

    pos.QuadPart = 0;
    hr = FUNC0(stream, pos, SEEK_SET, (ULARGE_INTEGER *)&pos);
    FUNC6(hr == S_OK, "IStream_Seek error %#x\n", hr);

    if (FUNC1(encoder, &CLSID_WICPngEncoder))
        FUNC4(stream, format);
    else if (FUNC1(encoder, &CLSID_WICBmpEncoder))
        FUNC2(stream, format);
    else if (FUNC1(encoder, &CLSID_WICTiffEncoder))
        FUNC5(stream, format);
    else if (FUNC1(encoder, &CLSID_WICGifEncoder))
        FUNC3(stream, format);
    else
        FUNC6(0, "unknown encoder %s\n", FUNC7(encoder));

    hr = FUNC0(stream, pos, SEEK_SET, NULL);
    FUNC6(hr == S_OK, "IStream_Seek error %#x\n", hr);
}