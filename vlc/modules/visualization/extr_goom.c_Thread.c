
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {scalar_t__ date; TYPE_1__* p; } ;
typedef TYPE_3__ picture_t ;
typedef int int16_t ;
struct TYPE_9__ {int i_width; int i_height; } ;
struct TYPE_11__ {int b_exit; int i_speed; int p_vout; TYPE_2__ fmt; int lock; int wait; int date; } ;
typedef TYPE_4__ goom_thread_t ;
typedef int date_t ;
struct TYPE_8__ {int p_pixels; } ;
typedef int PluginInfo ;


 scalar_t__ FillBuffer (int *,int*,int *,int *,TYPE_4__*) ;
 scalar_t__ GOOM_DELAY ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ date_Get (int *) ;
 int goom_close (int *) ;
 int * goom_init (int,int) ;
 int * goom_update (int *,int **,int ,double,int *,int *) ;
 int memcpy (int ,int *,int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_cond_wait (int *,int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;
 scalar_t__ vlc_tick_now () ;
 TYPE_3__* vout_GetPicture (int ) ;
 int vout_PutPicture (int ,TYPE_3__*) ;

__attribute__((used)) static void *Thread( void *p_thread_data )
{
    goom_thread_t *p_thread = (goom_thread_t*)p_thread_data;
    date_t i_pts;
    int16_t p_data[2][512];
    int i_data = 0, i_count = 0;
    PluginInfo *p_plugin_info;
    int canc = vlc_savecancel ();

    p_plugin_info = goom_init( p_thread->fmt.i_width, p_thread->fmt.i_height );

    for( ;; )
    {
        uint32_t *plane;
        picture_t *p_pic;
        vlc_mutex_lock( &p_thread->lock );
        if( !p_thread->b_exit &&
            FillBuffer( (int16_t *)p_data, &i_data,
                        &i_pts, &p_thread->date, p_thread ) != VLC_SUCCESS )
            vlc_cond_wait( &p_thread->wait, &p_thread->lock );
        bool b_exit = p_thread->b_exit;
        vlc_mutex_unlock( &p_thread->lock );

        if( b_exit )
            break;


        if( p_thread->i_speed && (++i_count % (p_thread->i_speed+1)) ) continue;


        if( date_Get( &i_pts ) + GOOM_DELAY <= vlc_tick_now() ) continue;

        plane = goom_update( p_plugin_info, p_data, 0, 0.0,
                             ((void*)0), ((void*)0) );

        p_pic = vout_GetPicture( p_thread->p_vout );
        if( unlikely(p_pic == ((void*)0)) )
            continue;

        memcpy( p_pic->p[0].p_pixels, plane,
                p_thread->fmt.i_width * p_thread->fmt.i_height * 4 );

        p_pic->date = date_Get( &i_pts ) + GOOM_DELAY;
        vout_PutPicture( p_thread->p_vout, p_pic );
    }

    goom_close( p_plugin_info );
    vlc_restorecancel (canc);
    return ((void*)0);
}
