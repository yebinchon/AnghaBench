#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  bo_t ;
struct TYPE_7__ {int i_cat; int f_fps; int i_frames; int i_bitrate; TYPE_2__* p_wf; TYPE_1__* p_bih; } ;
typedef  TYPE_3__ avi_stream_t ;
struct TYPE_6__ {int nBlockAlign; } ;
struct TYPE_5__ {int biCompression; int /*<<< orphan*/  biHeight; int /*<<< orphan*/  biWidth; int /*<<< orphan*/  biBitCount; } ;

/* Variables and functions */
#define  AUDIO_ES 129 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  VIDEO_ES 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int FUNC6( bo_t *p_bo, avi_stream_t *p_stream )
{
    FUNC0( "strh" );

    switch( p_stream->i_cat )
    {
        case VIDEO_ES:
            {
                FUNC5( p_bo, "vids" );
                if( p_stream->p_bih->biBitCount )
                    FUNC5( p_bo, "DIB " );
                else
#ifdef WORDS_BIGENDIAN
                bo_add_32be( p_bo, p_stream->p_bih->biCompression );
#else
                FUNC4( p_bo, p_stream->p_bih->biCompression );
#endif
                FUNC4( p_bo, 0 );   /* flags */
                FUNC2(  p_bo, 0 );   /* priority */
                FUNC2(  p_bo, 0 );   /* langage */
                FUNC4( p_bo, 0 );   /* initial frame */
                FUNC4( p_bo, 1000 );/* scale */
                FUNC4( p_bo, (uint32_t)( 1000 * p_stream->f_fps ));
                FUNC4( p_bo, 0 );   /* start */
                FUNC4( p_bo, p_stream->i_frames );
                FUNC4( p_bo, 1024 * 1024 );
                FUNC4( p_bo, -1 );  /* quality */
                FUNC4( p_bo, 0 );   /* samplesize */
                FUNC2(  p_bo, 0 );   /* ??? */
                FUNC2(  p_bo, 0 );   /* ??? */
                FUNC2(  p_bo, p_stream->p_bih->biWidth );
                FUNC2(  p_bo, p_stream->p_bih->biHeight );
            }
            break;
        case AUDIO_ES:
            {
                int i_rate, i_scale, i_samplesize;

                i_samplesize = p_stream->p_wf->nBlockAlign;
                if( i_samplesize > 1 )
                {
                    i_scale = i_samplesize;
                    i_rate = /*i_scale **/ p_stream->i_bitrate / 8;
                }
                else
                {
                    i_samplesize = 1;
                    i_scale = 1000;
                    i_rate = 1000 * p_stream->i_bitrate / 8;
                }
                FUNC5( p_bo, "auds" );
                FUNC4( p_bo, 0 );   /* tag */
                FUNC4( p_bo, 0 );   /* flags */
                FUNC2(  p_bo, 0 );   /* priority */
                FUNC2(  p_bo, 0 );   /* langage */
                FUNC4( p_bo, 0 );   /* initial frame */
                FUNC4( p_bo, i_scale );/* scale */
                FUNC4( p_bo, i_rate );
                FUNC4( p_bo, 0 );   /* start */
                FUNC4( p_bo, p_stream->i_frames );
                FUNC4( p_bo, 10 * 1024 );
                FUNC4( p_bo, -1 );  /* quality */
                FUNC4( p_bo, i_samplesize );
                FUNC2(  p_bo, 0 );   /* ??? */
                FUNC2(  p_bo, 0 );   /* ??? */
                FUNC2(  p_bo, 0 );
                FUNC2(  p_bo, 0 );
            }
            break;
    }

    FUNC1( 0 );
}