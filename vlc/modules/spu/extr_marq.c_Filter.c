
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_15__ {int i_sar_den; int i_sar_num; } ;
typedef TYPE_1__ video_format_t ;
struct TYPE_16__ {int b_ephemer; int b_absolute; TYPE_7__* p_region; scalar_t__ i_stop; scalar_t__ i_start; } ;
typedef TYPE_2__ subpicture_t ;
struct TYPE_17__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_18__ {scalar_t__ last_time; scalar_t__ i_refresh; char* format; char* message; scalar_t__ i_timeout; int i_pos; int lock; int p_style; int i_yoff; int i_xoff; int * filepath; } ;
typedef TYPE_4__ filter_sys_t ;
struct TYPE_20__ {int i_align; TYPE_6__* p_text; int i_y; int i_x; } ;
struct TYPE_19__ {int style; } ;


 char* MarqueeReadFile (TYPE_3__*,int *) ;
 int SUBPICTURE_ALIGN_LEFT ;
 int SUBPICTURE_ALIGN_TOP ;
 int VLC_CODEC_TEXT ;
 TYPE_2__* filter_NewSubpicture (TYPE_3__*) ;
 int free (char*) ;
 int strcmp (char*,char*) ;
 int subpicture_Delete (TYPE_2__*) ;
 TYPE_7__* subpicture_region_New (TYPE_1__*) ;
 TYPE_6__* text_segment_New (char*) ;
 int text_style_Duplicate (int ) ;
 scalar_t__ unlikely (int ) ;
 int video_format_Init (TYPE_1__*,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 char* vlc_strftime (char*) ;

__attribute__((used)) static subpicture_t *Filter( filter_t *p_filter, vlc_tick_t date )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    subpicture_t *p_spu = ((void*)0);

    vlc_mutex_lock( &p_sys->lock );
    if( p_sys->last_time + p_sys->i_refresh > date )
        goto out;

    if( p_sys->filepath != ((void*)0) )
    {
        char *fmt = MarqueeReadFile( p_filter, p_sys->filepath );
        if( fmt != ((void*)0) )
        {
            free( p_sys->format );
            p_sys->format = fmt;
        }
    }

    char *msg = vlc_strftime( p_sys->format ? p_sys->format : "" );
    if( unlikely( msg == ((void*)0) ) )
        goto out;
    if( p_sys->message != ((void*)0) && !strcmp( msg, p_sys->message ) )
    {
        free( msg );
        goto out;
    }
    free( p_sys->message );
    p_sys->message = msg;

    p_spu = filter_NewSubpicture( p_filter );
    if( !p_spu )
        goto out;

    video_format_t vfmt;
    video_format_Init( &vfmt, VLC_CODEC_TEXT );
    vfmt.i_sar_den = vfmt.i_sar_num = 1;
    p_spu->p_region = subpicture_region_New( &vfmt );
    if( !p_spu->p_region )
    {
        subpicture_Delete( p_spu );
        p_spu = ((void*)0);
        goto out;
    }

    p_sys->last_time = date;

    p_spu->p_region->p_text = text_segment_New( msg );
    p_spu->i_start = date;
    p_spu->i_stop = p_sys->i_timeout == 0 ? 0 : date + p_sys->i_timeout;
    p_spu->b_ephemer = 1;


    if( p_sys->i_pos < 0 )
    {
        p_spu->p_region->i_align = SUBPICTURE_ALIGN_LEFT | SUBPICTURE_ALIGN_TOP;
        p_spu->b_absolute = 1;
    }
    else
    {
        p_spu->p_region->i_align = p_sys->i_pos;
        p_spu->b_absolute = 0;
    }

    p_spu->p_region->i_x = p_sys->i_xoff;
    p_spu->p_region->i_y = p_sys->i_yoff;

    p_spu->p_region->p_text->style = text_style_Duplicate( p_sys->p_style );

out:
    vlc_mutex_unlock( &p_sys->lock );
    return p_spu;
}
