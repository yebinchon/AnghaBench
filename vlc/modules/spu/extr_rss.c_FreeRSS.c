
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_items; struct TYPE_5__* psz_url; int * p_pic; struct TYPE_5__* psz_image; struct TYPE_5__* psz_description; struct TYPE_5__* psz_link; struct TYPE_5__* psz_title; struct TYPE_5__* p_items; } ;
typedef TYPE_1__ rss_item_t ;
typedef TYPE_1__ rss_feed_t ;


 int free (TYPE_1__*) ;
 int picture_Release (int *) ;

__attribute__((used)) static void FreeRSS( rss_feed_t *p_feeds, int i_feeds )
{
    for( int i_feed = 0; i_feed < i_feeds; i_feed++ )
    {
        rss_feed_t *p_feed = p_feeds+i_feed;
        for( int i_item = 0; i_item < p_feed->i_items; i_item++ )
        {
            rss_item_t *p_item = p_feed->p_items+i_item;
            free( p_item->psz_title );
            free( p_item->psz_link );
            free( p_item->psz_description );
        }
        free( p_feed->p_items );
        free( p_feed->psz_title);
        free( p_feed->psz_link );
        free( p_feed->psz_description );
        free( p_feed->psz_image );
        if( p_feed->p_pic != ((void*)0) )
            picture_Release( p_feed->p_pic );
        free( p_feed->psz_url );
    }
    free( p_feeds );
}
