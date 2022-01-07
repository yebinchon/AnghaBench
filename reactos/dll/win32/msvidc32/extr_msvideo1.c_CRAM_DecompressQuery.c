
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int biBitCount; int biWidth; int biHeight; int biPlanes; int biCompression; } ;
struct TYPE_9__ {TYPE_1__ bmiHeader; } ;
struct TYPE_8__ {int dwMagic; } ;
typedef TYPE_2__ Msvideo1Context ;
typedef int LRESULT ;
typedef TYPE_3__* LPBITMAPINFO ;


 int CRAM_MAGIC ;
 int ICERR_BADFORMAT ;
 int ICERR_BADPARAM ;
 int ICERR_OK ;
 int MSVC_MAGIC ;
 int TRACE (char*,...) ;
 int WHAM_MAGIC ;

__attribute__((used)) static LRESULT
CRAM_DecompressQuery( Msvideo1Context *info, LPBITMAPINFO in, LPBITMAPINFO out )
{
    TRACE("ICM_DECOMPRESS_QUERY %p %p %p\n", info, in, out);

    if( (info==((void*)0)) || (info->dwMagic!=CRAM_MAGIC) )
        return ICERR_BADPARAM;

    TRACE("in->planes  = %d\n", in->bmiHeader.biPlanes );
    TRACE("in->bpp     = %d\n", in->bmiHeader.biBitCount );
    TRACE("in->height  = %d\n", in->bmiHeader.biHeight );
    TRACE("in->width   = %d\n", in->bmiHeader.biWidth );
    TRACE("in->compr   = 0x%x\n", in->bmiHeader.biCompression );

    if( ( in->bmiHeader.biCompression != CRAM_MAGIC ) &&
        ( in->bmiHeader.biCompression != MSVC_MAGIC ) &&
        ( in->bmiHeader.biCompression != WHAM_MAGIC ) )
    {
        TRACE("can't do 0x%x compression\n", in->bmiHeader.biCompression);
        return ICERR_BADFORMAT;
    }

    if( ( in->bmiHeader.biBitCount != 16 ) &&
        ( in->bmiHeader.biBitCount != 8 ) )
    {
        TRACE("can't do %d bpp\n", in->bmiHeader.biBitCount );
        return ICERR_BADFORMAT;
    }


    if( out )
    {
        TRACE("out->planes = %d\n", out->bmiHeader.biPlanes );
        TRACE("out->bpp    = %d\n", out->bmiHeader.biBitCount );
        TRACE("out->height = %d\n", out->bmiHeader.biHeight );
        TRACE("out->width  = %d\n", out->bmiHeader.biWidth );

        if ((in->bmiHeader.biBitCount != out->bmiHeader.biBitCount) &&
            (in->bmiHeader.biBitCount != 16 || out->bmiHeader.biBitCount != 24))
        {
            TRACE("incompatible depth requested\n");
            return ICERR_BADFORMAT;
        }

        if(( in->bmiHeader.biPlanes != out->bmiHeader.biPlanes ) ||
          ( in->bmiHeader.biHeight != out->bmiHeader.biHeight ) ||
          ( in->bmiHeader.biWidth != out->bmiHeader.biWidth ))
        {
            TRACE("incompatible output requested\n");
            return ICERR_BADFORMAT;
        }
    }

    TRACE("OK!\n");
    return ICERR_OK;
}
