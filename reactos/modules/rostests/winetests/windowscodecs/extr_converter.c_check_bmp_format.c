
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bih ;
typedef int bfh ;
typedef int WICPixelFormatGUID ;
struct TYPE_4__ {int bfType; int bfReserved1; int bfReserved2; int bfOffBits; int bV5Width; int bV5Height; int bV5Planes; int bV5BitCount; int bV5ClrUsed; int bV5ClrImportant; } ;
typedef int IStream ;
typedef int HRESULT ;
typedef TYPE_1__ BITMAPV5HEADER ;
typedef TYPE_1__ BITMAPFILEHEADER ;


 int GUID_WICPixelFormat1bppIndexed ;
 int GUID_WICPixelFormat32bppBGR ;
 int GUID_WICPixelFormat4bppIndexed ;
 int GUID_WICPixelFormat8bppIndexed ;
 int IStream_Read (int *,TYPE_1__*,int,int *) ;
 scalar_t__ IsEqualGUID (int const*,int *) ;
 int S_OK ;
 int ok (int,char*,int) ;
 int wine_dbgstr_guid (int const*) ;

__attribute__((used)) static void check_bmp_format(IStream *stream, const WICPixelFormatGUID *format)
{
    HRESULT hr;
    BITMAPFILEHEADER bfh;
    BITMAPV5HEADER bih;

    hr = IStream_Read(stream, &bfh, sizeof(bfh), ((void*)0));
    ok(hr == S_OK, "IStream_Read error %#x\n", hr);

    ok(bfh.bfType == 0x4d42, "wrong BMP signature %02x\n", bfh.bfType);
    ok(bfh.bfReserved1 == 0, "wrong bfReserved1 %02x\n", bfh.bfReserved1);
    ok(bfh.bfReserved2 == 0, "wrong bfReserved2 %02x\n", bfh.bfReserved2);

    hr = IStream_Read(stream, &bih, sizeof(bih), ((void*)0));
    ok(hr == S_OK, "IStream_Read error %#x\n", hr);

    if (IsEqualGUID(format, &GUID_WICPixelFormat1bppIndexed))
    {
        ok(bfh.bfOffBits == 0x0436, "wrong bfOffBits %08x\n", bfh.bfOffBits);

        ok(bih.bV5Width == 32, "wrong width %u\n", bih.bV5Width);
        ok(bih.bV5Height == 2, "wrong height %u\n", bih.bV5Height);

        ok(bih.bV5Planes == 1, "wrong Planes %d\n", bih.bV5Planes);
        ok(bih.bV5BitCount == 1, "wrong BitCount %d\n", bih.bV5BitCount);
        ok(bih.bV5ClrUsed == 256, "wrong ClrUsed %d\n", bih.bV5ClrUsed);
        ok(bih.bV5ClrImportant == 256, "wrong ClrImportant %d\n", bih.bV5ClrImportant);
    }
    else if (IsEqualGUID(format, &GUID_WICPixelFormat4bppIndexed))
    {
        ok(bfh.bfOffBits == 0x0436, "wrong bfOffBits %08x\n", bfh.bfOffBits);

        ok(bih.bV5Width == 32, "wrong width %u\n", bih.bV5Width);
        ok(bih.bV5Height == 2, "wrong height %u\n", bih.bV5Height);

        ok(bih.bV5Planes == 1, "wrong Planes %d\n", bih.bV5Planes);
        ok(bih.bV5BitCount == 4, "wrong BitCount %d\n", bih.bV5BitCount);
        ok(bih.bV5ClrUsed == 256, "wrong ClrUsed %d\n", bih.bV5ClrUsed);
        ok(bih.bV5ClrImportant == 256, "wrong ClrImportant %d\n", bih.bV5ClrImportant);
    }
    else if (IsEqualGUID(format, &GUID_WICPixelFormat8bppIndexed))
    {
        ok(bfh.bfOffBits == 0x0436, "wrong bfOffBits %08x\n", bfh.bfOffBits);

        ok(bih.bV5Width == 32, "wrong width %u\n", bih.bV5Width);
        ok(bih.bV5Height == 2, "wrong height %u\n", bih.bV5Height);

        ok(bih.bV5Planes == 1, "wrong Planes %d\n", bih.bV5Planes);
        ok(bih.bV5BitCount == 8, "wrong BitCount %d\n", bih.bV5BitCount);
        ok(bih.bV5ClrUsed == 256, "wrong ClrUsed %d\n", bih.bV5ClrUsed);
        ok(bih.bV5ClrImportant == 256, "wrong ClrImportant %d\n", bih.bV5ClrImportant);
    }
    else if (IsEqualGUID(format, &GUID_WICPixelFormat32bppBGR))
    {
        ok(bfh.bfOffBits == 0x0036, "wrong bfOffBits %08x\n", bfh.bfOffBits);

        ok(bih.bV5Width == 32, "wrong width %u\n", bih.bV5Width);
        ok(bih.bV5Height == 2, "wrong height %u\n", bih.bV5Height);

        ok(bih.bV5Planes == 1, "wrong Planes %d\n", bih.bV5Planes);
        ok(bih.bV5BitCount == 32, "wrong BitCount %d\n", bih.bV5BitCount);
        ok(bih.bV5ClrUsed == 0, "wrong ClrUsed %d\n", bih.bV5ClrUsed);
        ok(bih.bV5ClrImportant == 0, "wrong ClrImportant %d\n", bih.bV5ClrImportant);
    }
    else
        ok(0, "unknown BMP pixel format %s\n", wine_dbgstr_guid(format));
}
