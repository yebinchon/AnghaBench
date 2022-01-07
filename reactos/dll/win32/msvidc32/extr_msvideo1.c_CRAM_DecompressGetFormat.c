
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int biSize; int biBitCount; int biClrUsed; int biWidth; int biHeight; int biSizeImage; int biCompression; } ;
struct TYPE_14__ {TYPE_1__ bmiHeader; } ;
struct TYPE_13__ {scalar_t__ dwMagic; } ;
typedef int RGBQUAD ;
typedef TYPE_2__ Msvideo1Context ;
typedef int LRESULT ;
typedef TYPE_3__* LPBITMAPINFO ;
typedef int DWORD ;


 int BI_RGB ;
 scalar_t__ CRAM_MAGIC ;
 int ICERR_BADFORMAT ;
 int ICERR_BADPARAM ;
 int ICERR_OK ;
 int TRACE (char*,TYPE_2__*,TYPE_3__*,TYPE_3__*) ;
 int get_stride (int,int) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;

__attribute__((used)) static LRESULT
CRAM_DecompressGetFormat( Msvideo1Context *info, LPBITMAPINFO in, LPBITMAPINFO out )
{
    DWORD size;

    TRACE("ICM_DECOMPRESS_GETFORMAT %p %p %p\n", info, in, out);

    if( (info==((void*)0)) || (info->dwMagic!=CRAM_MAGIC) )
        return ICERR_BADPARAM;

    size = in->bmiHeader.biSize;
    if (in->bmiHeader.biBitCount <= 8)
        size += in->bmiHeader.biClrUsed * sizeof(RGBQUAD);

    if (in->bmiHeader.biBitCount != 8 && in->bmiHeader.biBitCount != 16)
        return ICERR_BADFORMAT;

    if( out )
    {
        memcpy( out, in, size );
        out->bmiHeader.biWidth = in->bmiHeader.biWidth & ~1;
        out->bmiHeader.biHeight = in->bmiHeader.biHeight & ~1;
        out->bmiHeader.biCompression = BI_RGB;
        out->bmiHeader.biSizeImage = in->bmiHeader.biHeight *
                                     get_stride(out->bmiHeader.biWidth, out->bmiHeader.biBitCount);
        return ICERR_OK;
    }

    return size;
}
