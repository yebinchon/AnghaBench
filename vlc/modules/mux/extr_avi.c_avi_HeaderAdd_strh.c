
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int bo_t ;
struct TYPE_7__ {int i_cat; int f_fps; int i_frames; int i_bitrate; TYPE_2__* p_wf; TYPE_1__* p_bih; } ;
typedef TYPE_3__ avi_stream_t ;
struct TYPE_6__ {int nBlockAlign; } ;
struct TYPE_5__ {int biCompression; int biHeight; int biWidth; int biBitCount; } ;



 int AVI_BOX_ENTER (char*) ;
 int AVI_BOX_EXIT (int ) ;

 int bo_add_16le (int *,int ) ;
 int bo_add_32be (int *,int) ;
 int bo_add_32le (int *,int) ;
 int bo_add_fourcc (int *,char*) ;

__attribute__((used)) static int avi_HeaderAdd_strh( bo_t *p_bo, avi_stream_t *p_stream )
{
    AVI_BOX_ENTER( "strh" );

    switch( p_stream->i_cat )
    {
        case 128:
            {
                bo_add_fourcc( p_bo, "vids" );
                if( p_stream->p_bih->biBitCount )
                    bo_add_fourcc( p_bo, "DIB " );
                else



                bo_add_32le( p_bo, p_stream->p_bih->biCompression );

                bo_add_32le( p_bo, 0 );
                bo_add_16le( p_bo, 0 );
                bo_add_16le( p_bo, 0 );
                bo_add_32le( p_bo, 0 );
                bo_add_32le( p_bo, 1000 );
                bo_add_32le( p_bo, (uint32_t)( 1000 * p_stream->f_fps ));
                bo_add_32le( p_bo, 0 );
                bo_add_32le( p_bo, p_stream->i_frames );
                bo_add_32le( p_bo, 1024 * 1024 );
                bo_add_32le( p_bo, -1 );
                bo_add_32le( p_bo, 0 );
                bo_add_16le( p_bo, 0 );
                bo_add_16le( p_bo, 0 );
                bo_add_16le( p_bo, p_stream->p_bih->biWidth );
                bo_add_16le( p_bo, p_stream->p_bih->biHeight );
            }
            break;
        case 129:
            {
                int i_rate, i_scale, i_samplesize;

                i_samplesize = p_stream->p_wf->nBlockAlign;
                if( i_samplesize > 1 )
                {
                    i_scale = i_samplesize;
                    i_rate = p_stream->i_bitrate / 8;
                }
                else
                {
                    i_samplesize = 1;
                    i_scale = 1000;
                    i_rate = 1000 * p_stream->i_bitrate / 8;
                }
                bo_add_fourcc( p_bo, "auds" );
                bo_add_32le( p_bo, 0 );
                bo_add_32le( p_bo, 0 );
                bo_add_16le( p_bo, 0 );
                bo_add_16le( p_bo, 0 );
                bo_add_32le( p_bo, 0 );
                bo_add_32le( p_bo, i_scale );
                bo_add_32le( p_bo, i_rate );
                bo_add_32le( p_bo, 0 );
                bo_add_32le( p_bo, p_stream->i_frames );
                bo_add_32le( p_bo, 10 * 1024 );
                bo_add_32le( p_bo, -1 );
                bo_add_32le( p_bo, i_samplesize );
                bo_add_16le( p_bo, 0 );
                bo_add_16le( p_bo, 0 );
                bo_add_16le( p_bo, 0 );
                bo_add_16le( p_bo, 0 );
            }
            break;
    }

    AVI_BOX_EXIT( 0 );
}
