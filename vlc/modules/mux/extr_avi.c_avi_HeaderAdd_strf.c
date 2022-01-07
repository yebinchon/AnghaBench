
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int bo_t ;
struct TYPE_7__ {int i_cat; TYPE_2__* p_bih; int i_bih; TYPE_1__* p_wf; } ;
typedef TYPE_3__ avi_stream_t ;
typedef int VLC_BITMAPINFOHEADER ;
struct TYPE_6__ {int biClrImportant; int biClrUsed; int biYPelsPerMeter; int biXPelsPerMeter; int biSizeImage; int biCompression; int biBitCount; int biPlanes; int biHeight; int biWidth; int biSize; } ;
struct TYPE_5__ {int cbSize; int wBitsPerSample; int nBlockAlign; int nAvgBytesPerSec; int nSamplesPerSec; int nChannels; int wFormatTag; } ;



 int AVI_BOX_ENTER (char*) ;
 int AVI_BOX_EXIT (int ) ;

 int bo_add_16le (int *,int ) ;
 int bo_add_32be (int *,int ) ;
 int bo_add_32le (int *,int ) ;
 int bo_add_mem (int *,int ,int *) ;

__attribute__((used)) static int avi_HeaderAdd_strf( bo_t *p_bo, avi_stream_t *p_stream )
{
    AVI_BOX_ENTER( "strf" );

    switch( p_stream->i_cat )
    {
        case 129:
            bo_add_16le( p_bo, p_stream->p_wf->wFormatTag );
            bo_add_16le( p_bo, p_stream->p_wf->nChannels );
            bo_add_32le( p_bo, p_stream->p_wf->nSamplesPerSec );
            bo_add_32le( p_bo, p_stream->p_wf->nAvgBytesPerSec );
            bo_add_16le( p_bo, p_stream->p_wf->nBlockAlign );
            bo_add_16le( p_bo, p_stream->p_wf->wBitsPerSample );
            bo_add_16le( p_bo, p_stream->p_wf->cbSize );
            bo_add_mem( p_bo, p_stream->p_wf->cbSize, (uint8_t*)&p_stream->p_wf[1] );
            break;
        case 128:
            bo_add_32le( p_bo, p_stream->p_bih->biSize );
            bo_add_32le( p_bo, p_stream->p_bih->biWidth );
            bo_add_32le( p_bo, p_stream->p_bih->biHeight );
            bo_add_16le( p_bo, p_stream->p_bih->biPlanes );
            bo_add_16le( p_bo, p_stream->p_bih->biBitCount );



                bo_add_32le( p_bo, p_stream->p_bih->biCompression );

            bo_add_32le( p_bo, p_stream->p_bih->biSizeImage );
            bo_add_32le( p_bo, p_stream->p_bih->biXPelsPerMeter );
            bo_add_32le( p_bo, p_stream->p_bih->biYPelsPerMeter );
            bo_add_32le( p_bo, p_stream->p_bih->biClrUsed );
            bo_add_32le( p_bo, p_stream->p_bih->biClrImportant );
            bo_add_mem( p_bo,
                        p_stream->i_bih - sizeof( VLC_BITMAPINFOHEADER ),
                        (uint8_t*)&p_stream->p_bih[1] );
            break;
    }

    AVI_BOX_EXIT( 0 );
}
