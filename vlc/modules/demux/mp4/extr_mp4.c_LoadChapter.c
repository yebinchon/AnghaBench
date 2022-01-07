
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int uint64_t ;
struct TYPE_13__ {scalar_t__ i_cat; scalar_t__ i_codec; } ;
struct TYPE_15__ {int i_use_flags; TYPE_1__ fmt; scalar_t__ b_ok; } ;
typedef TYPE_3__ mp4_track_t ;
struct TYPE_16__ {TYPE_5__* p_sys; } ;
typedef TYPE_4__ demux_t ;
struct TYPE_17__ {unsigned int i_tracks; int i_timescale; TYPE_2__* p_title; int i_cumulated_duration; int i_duration; TYPE_3__* track; int p_root; } ;
typedef TYPE_5__ demux_sys_t ;
struct TYPE_14__ {int i_length; } ;
struct TYPE_12__ {scalar_t__ i_chapter; scalar_t__ i_chapter_count; scalar_t__ pi_chapter_start; } ;
typedef int MP4_Box_t ;


 TYPE_11__* BOXDATA (int *) ;
 int LoadChapterApple (TYPE_4__*,TYPE_3__*) ;
 int LoadChapterGoPro (TYPE_4__*,int *) ;
 int LoadChapterGpac (TYPE_4__*,int *) ;
 int * MP4_BoxGet (int ,char*) ;
 int MP4_rescale_mtime (int const,int ) ;
 scalar_t__ SPU_ES ;
 int USEAS_CHAPTERS ;
 scalar_t__ VLC_CODEC_TX3G ;
 int __MAX (int ,int ) ;

__attribute__((used)) static void LoadChapter( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    MP4_Box_t *p_chpl;
    MP4_Box_t *p_hmmt;

    if( ( p_chpl = MP4_BoxGet( p_sys->p_root, "/moov/udta/chpl" ) ) &&
          BOXDATA(p_chpl) && BOXDATA(p_chpl)->i_chapter > 0 )
    {
        LoadChapterGpac( p_demux, p_chpl );
    }
    else if( ( p_hmmt = MP4_BoxGet( p_sys->p_root, "/moov/udta/HMMT" ) ) &&
             BOXDATA(p_hmmt) && BOXDATA(p_hmmt)->pi_chapter_start && BOXDATA(p_hmmt)->i_chapter_count > 0 )
    {
        LoadChapterGoPro( p_demux, p_hmmt );
    }
    else
    {

        for( unsigned i = 0; i < p_sys->i_tracks; i++ )
        {
            mp4_track_t *tk = &p_sys->track[i];
            if(tk->b_ok && (tk->i_use_flags & USEAS_CHAPTERS) &&
               tk->fmt.i_cat == SPU_ES && tk->fmt.i_codec == VLC_CODEC_TX3G)
            {
                LoadChapterApple( p_demux, tk );
                break;
            }
        }
    }


    if( p_sys->p_title )
    {
        const uint64_t i_duration = __MAX(p_sys->i_duration, p_sys->i_cumulated_duration);
        p_sys->p_title->i_length =
                MP4_rescale_mtime( i_duration, p_sys->i_timescale );
    }
}
