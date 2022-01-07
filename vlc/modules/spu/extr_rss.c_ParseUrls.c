
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int psz_url; int * p_pic; int * psz_image; int * psz_description; int * psz_link; int * psz_title; int * p_items; scalar_t__ i_items; } ;
typedef TYPE_1__ rss_feed_t ;
struct TYPE_7__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_8__ {int i_feeds; TYPE_1__* p_feeds; } ;
typedef TYPE_3__ filter_sys_t ;


 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 char* strchr (char*,char) ;
 int strdup (char*) ;
 TYPE_1__* vlc_alloc (int,int) ;

__attribute__((used)) static int ParseUrls( filter_t *p_filter, char *psz_urls )
{
    filter_sys_t *p_sys = p_filter->p_sys;
    char *psz_urls2 = psz_urls;

    p_sys->i_feeds = 1;


    while( *psz_urls )
    {
        if( *psz_urls == '|' )
            p_sys->i_feeds++;
        psz_urls++;
    }


    p_sys->p_feeds = vlc_alloc( p_sys->i_feeds, sizeof( rss_feed_t ) );
    if( !p_sys->p_feeds )
        return VLC_ENOMEM;


    psz_urls = psz_urls2;
    for( int i = 0; i < p_sys->i_feeds; i++ )
    {
        rss_feed_t* p_feed = p_sys->p_feeds + i;
        char *psz_end;

        if( i < p_sys->i_feeds - 1 )
        {
            psz_end = strchr( psz_urls, '|' );
            *psz_end = '\0';
        }
        else
            psz_end = psz_urls;

        p_feed->i_items = 0;
        p_feed->p_items = ((void*)0);
        p_feed->psz_title = ((void*)0);
        p_feed->psz_link = ((void*)0);
        p_feed->psz_description = ((void*)0);
        p_feed->psz_image = ((void*)0);
        p_feed->p_pic = ((void*)0);
        p_feed->psz_url = strdup( psz_urls );

        psz_urls = psz_end + 1;
    }

    return VLC_SUCCESS;
}
