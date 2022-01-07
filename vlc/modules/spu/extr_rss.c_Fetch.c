
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int rss_feed_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_7__ {int b_fetched; int i_cur_item; scalar_t__ i_title; int i_feeds; int lock; scalar_t__ i_cur_char; scalar_t__ i_cur_feed; int * p_feeds; } ;
typedef TYPE_2__ filter_sys_t ;


 int * FetchRSS (TYPE_1__*) ;
 int FreeRSS (int *,int ) ;
 int msg_Dbg (TYPE_1__*,char*) ;
 int msg_Err (TYPE_1__*,char*) ;
 scalar_t__ scroll_title ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void Fetch( void *p_data )
{
    filter_t *p_filter = p_data;
    filter_sys_t *p_sys = p_filter->p_sys;

    msg_Dbg( p_filter, "Updating the rss feeds" );
    rss_feed_t *p_feeds = FetchRSS( p_filter );
    if( !p_feeds )
    {
        msg_Err( p_filter, "Unable to fetch the feeds" );
        return;
    }

    rss_feed_t *p_old_feeds = p_sys->p_feeds;

    vlc_mutex_lock( &p_sys->lock );

    p_sys->p_feeds = p_feeds;
    p_sys->b_fetched = 1;

    p_sys->i_cur_feed = 0;
    p_sys->i_cur_item = p_sys->i_title == scroll_title ? -1 : 0;
    p_sys->i_cur_char = 0;
    vlc_mutex_unlock( &p_sys->lock );

    if( p_old_feeds )
        FreeRSS( p_old_feeds, p_sys->i_feeds );
}
