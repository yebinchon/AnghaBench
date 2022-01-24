#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int biBitCount; int /*<<< orphan*/  biWidth; int /*<<< orphan*/  biHeight; int /*<<< orphan*/  biPlanes; int /*<<< orphan*/  biCompression; } ;
struct TYPE_9__ {TYPE_1__ bmiHeader; } ;
struct TYPE_8__ {int /*<<< orphan*/  dwMagic; } ;
typedef  TYPE_2__ Msvideo1Context ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_3__* LPBITMAPINFO ;

/* Variables and functions */
 int /*<<< orphan*/  CRAM_MAGIC ; 
 int /*<<< orphan*/  ICERR_BADFORMAT ; 
 int /*<<< orphan*/  ICERR_BADPARAM ; 
 int /*<<< orphan*/  ICERR_OK ; 
 int /*<<< orphan*/  MSVC_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  WHAM_MAGIC ; 

__attribute__((used)) static LRESULT
FUNC1( Msvideo1Context *info, LPBITMAPINFO in, LPBITMAPINFO out )
{
    FUNC0("ICM_DECOMPRESS_QUERY %p %p %p\n", info, in, out);

    if( (info==NULL) || (info->dwMagic!=CRAM_MAGIC) )
        return ICERR_BADPARAM;

    FUNC0("in->planes  = %d\n", in->bmiHeader.biPlanes );
    FUNC0("in->bpp     = %d\n", in->bmiHeader.biBitCount );
    FUNC0("in->height  = %d\n", in->bmiHeader.biHeight );
    FUNC0("in->width   = %d\n", in->bmiHeader.biWidth );
    FUNC0("in->compr   = 0x%x\n", in->bmiHeader.biCompression );

    if( ( in->bmiHeader.biCompression != CRAM_MAGIC ) &&
        ( in->bmiHeader.biCompression != MSVC_MAGIC ) &&
        ( in->bmiHeader.biCompression != WHAM_MAGIC ) )
    {
        FUNC0("can't do 0x%x compression\n", in->bmiHeader.biCompression);
        return ICERR_BADFORMAT;
    }

    if( ( in->bmiHeader.biBitCount != 16 ) &&
        ( in->bmiHeader.biBitCount != 8 ) )
    {
        FUNC0("can't do %d bpp\n", in->bmiHeader.biBitCount );
        return ICERR_BADFORMAT;
    }

    /* output must be same dimensions as input */
    if( out )
    {
        FUNC0("out->planes = %d\n", out->bmiHeader.biPlanes );
        FUNC0("out->bpp    = %d\n", out->bmiHeader.biBitCount );
        FUNC0("out->height = %d\n", out->bmiHeader.biHeight );
        FUNC0("out->width  = %d\n", out->bmiHeader.biWidth );

        if ((in->bmiHeader.biBitCount != out->bmiHeader.biBitCount) &&
            (in->bmiHeader.biBitCount != 16 || out->bmiHeader.biBitCount != 24))
        {
            FUNC0("incompatible depth requested\n");
            return ICERR_BADFORMAT;
        }

        if(( in->bmiHeader.biPlanes != out->bmiHeader.biPlanes ) ||
          ( in->bmiHeader.biHeight != out->bmiHeader.biHeight ) ||
          ( in->bmiHeader.biWidth != out->bmiHeader.biWidth ))
        {
            FUNC0("incompatible output requested\n");
            return ICERR_BADFORMAT;
        }
    }

    FUNC0("OK!\n");
    return ICERR_OK;
}