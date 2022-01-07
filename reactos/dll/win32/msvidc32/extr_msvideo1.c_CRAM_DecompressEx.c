
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int biBitCount; int biWidth; int biHeight; } ;
struct TYPE_11__ {TYPE_4__* lpbiDst; void* lpDst; int lpSrc; TYPE_1__* lpbiSrc; } ;
struct TYPE_10__ {scalar_t__ dwMagic; int depth; } ;
struct TYPE_9__ {int biWidth; int biHeight; int biSizeImage; } ;
typedef TYPE_2__ Msvideo1Context ;
typedef int LRESULT ;
typedef int LONG ;
typedef TYPE_3__ ICDECOMPRESSEX ;
typedef int DWORD ;


 scalar_t__ CRAM_MAGIC ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,void*) ;
 int ICERR_BADPARAM ;
 int ICERR_MEMORY ;
 int ICERR_OK ;
 int TRACE (char*,TYPE_2__*,TYPE_3__*,int ) ;
 int convert_depth (void*,int,void*,TYPE_4__*) ;
 int get_stride (int,int) ;
 int msvideo1_decode_16bit (int,int,int ,int,void*,int) ;
 int msvideo1_decode_8bit (int,int,int ,int,void*,int) ;

__attribute__((used)) static LRESULT CRAM_DecompressEx( Msvideo1Context *info, ICDECOMPRESSEX *icd, DWORD size )
{
    LONG width, height, stride, sz;
    void *output;

    TRACE("ICM_DECOMPRESSEX %p %p %d\n", info, icd, size);

    if( (info==((void*)0)) || (info->dwMagic!=CRAM_MAGIC) )
        return ICERR_BADPARAM;



    width = icd->lpbiSrc->biWidth;
    height = icd->lpbiSrc->biHeight;
    sz = icd->lpbiSrc->biSizeImage;

    output = icd->lpDst;

    if (icd->lpbiDst->biBitCount != info->depth)
    {
        output = HeapAlloc(GetProcessHeap(), 0, icd->lpbiDst->biWidth * icd->lpbiDst->biHeight * info->depth / 8);
        if (!output) return ICERR_MEMORY;
    }

    if (info->depth == 8)
    {
        stride = get_stride(width, 8);
        msvideo1_decode_8bit( width, height, icd->lpSrc, sz,
                              output, stride );
    }
    else
    {
        stride = get_stride(width, 16) / 2;
        msvideo1_decode_16bit( width, height, icd->lpSrc, sz,
                               output, stride );
    }

    if (icd->lpbiDst->biBitCount != info->depth)
    {
        convert_depth(output, info->depth, icd->lpDst, icd->lpbiDst);
        HeapFree(GetProcessHeap(), 0, output);
    }

    return ICERR_OK;
}
