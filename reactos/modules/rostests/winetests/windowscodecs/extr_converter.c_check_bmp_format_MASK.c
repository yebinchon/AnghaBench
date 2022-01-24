#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  bih ;
typedef  int /*<<< orphan*/  bfh ;
typedef  int /*<<< orphan*/  WICPixelFormatGUID ;
struct TYPE_4__ {int bfType; int bfReserved1; int bfReserved2; int bfOffBits; int bV5Width; int bV5Height; int bV5Planes; int bV5BitCount; int bV5ClrUsed; int bV5ClrImportant; } ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int HRESULT ;
typedef  TYPE_1__ BITMAPV5HEADER ;
typedef  TYPE_1__ BITMAPFILEHEADER ;

/* Variables and functions */
 int /*<<< orphan*/  GUID_WICPixelFormat1bppIndexed ; 
 int /*<<< orphan*/  GUID_WICPixelFormat32bppBGR ; 
 int /*<<< orphan*/  GUID_WICPixelFormat4bppIndexed ; 
 int /*<<< orphan*/  GUID_WICPixelFormat8bppIndexed ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC4(IStream *stream, const WICPixelFormatGUID *format)
{
    HRESULT hr;
    BITMAPFILEHEADER bfh;
    BITMAPV5HEADER bih;

    hr = FUNC0(stream, &bfh, sizeof(bfh), NULL);
    FUNC2(hr == S_OK, "IStream_Read error %#x\n", hr);

    FUNC2(bfh.bfType == 0x4d42, "wrong BMP signature %02x\n", bfh.bfType);
    FUNC2(bfh.bfReserved1 == 0, "wrong bfReserved1 %02x\n", bfh.bfReserved1);
    FUNC2(bfh.bfReserved2 == 0, "wrong bfReserved2 %02x\n", bfh.bfReserved2);

    hr = FUNC0(stream, &bih, sizeof(bih), NULL);
    FUNC2(hr == S_OK, "IStream_Read error %#x\n", hr);

    if (FUNC1(format, &GUID_WICPixelFormat1bppIndexed))
    {
        FUNC2(bfh.bfOffBits == 0x0436, "wrong bfOffBits %08x\n", bfh.bfOffBits);

        FUNC2(bih.bV5Width == 32, "wrong width %u\n", bih.bV5Width);
        FUNC2(bih.bV5Height == 2, "wrong height %u\n", bih.bV5Height);

        FUNC2(bih.bV5Planes == 1, "wrong Planes %d\n", bih.bV5Planes);
        FUNC2(bih.bV5BitCount == 1, "wrong BitCount %d\n", bih.bV5BitCount);
        FUNC2(bih.bV5ClrUsed == 256, "wrong ClrUsed %d\n", bih.bV5ClrUsed);
        FUNC2(bih.bV5ClrImportant == 256, "wrong ClrImportant %d\n", bih.bV5ClrImportant);
    }
    else if (FUNC1(format, &GUID_WICPixelFormat4bppIndexed))
    {
        FUNC2(bfh.bfOffBits == 0x0436, "wrong bfOffBits %08x\n", bfh.bfOffBits);

        FUNC2(bih.bV5Width == 32, "wrong width %u\n", bih.bV5Width);
        FUNC2(bih.bV5Height == 2, "wrong height %u\n", bih.bV5Height);

        FUNC2(bih.bV5Planes == 1, "wrong Planes %d\n", bih.bV5Planes);
        FUNC2(bih.bV5BitCount == 4, "wrong BitCount %d\n", bih.bV5BitCount);
        FUNC2(bih.bV5ClrUsed == 256, "wrong ClrUsed %d\n", bih.bV5ClrUsed);
        FUNC2(bih.bV5ClrImportant == 256, "wrong ClrImportant %d\n", bih.bV5ClrImportant);
    }
    else if (FUNC1(format, &GUID_WICPixelFormat8bppIndexed))
    {
        FUNC2(bfh.bfOffBits == 0x0436, "wrong bfOffBits %08x\n", bfh.bfOffBits);

        FUNC2(bih.bV5Width == 32, "wrong width %u\n", bih.bV5Width);
        FUNC2(bih.bV5Height == 2, "wrong height %u\n", bih.bV5Height);

        FUNC2(bih.bV5Planes == 1, "wrong Planes %d\n", bih.bV5Planes);
        FUNC2(bih.bV5BitCount == 8, "wrong BitCount %d\n", bih.bV5BitCount);
        FUNC2(bih.bV5ClrUsed == 256, "wrong ClrUsed %d\n", bih.bV5ClrUsed);
        FUNC2(bih.bV5ClrImportant == 256, "wrong ClrImportant %d\n", bih.bV5ClrImportant);
    }
    else if (FUNC1(format, &GUID_WICPixelFormat32bppBGR))
    {
        FUNC2(bfh.bfOffBits == 0x0036, "wrong bfOffBits %08x\n", bfh.bfOffBits);

        FUNC2(bih.bV5Width == 32, "wrong width %u\n", bih.bV5Width);
        FUNC2(bih.bV5Height == 2, "wrong height %u\n", bih.bV5Height);

        FUNC2(bih.bV5Planes == 1, "wrong Planes %d\n", bih.bV5Planes);
        FUNC2(bih.bV5BitCount == 32, "wrong BitCount %d\n", bih.bV5BitCount);
        FUNC2(bih.bV5ClrUsed == 0, "wrong ClrUsed %d\n", bih.bV5ClrUsed);
        FUNC2(bih.bV5ClrImportant == 0, "wrong ClrImportant %d\n", bih.bV5ClrImportant);
    }
    else
        FUNC2(0, "unknown BMP pixel format %s\n", FUNC3(format));
}