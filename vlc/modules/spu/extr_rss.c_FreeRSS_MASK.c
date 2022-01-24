#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int i_items; struct TYPE_5__* psz_url; int /*<<< orphan*/ * p_pic; struct TYPE_5__* psz_image; struct TYPE_5__* psz_description; struct TYPE_5__* psz_link; struct TYPE_5__* psz_title; struct TYPE_5__* p_items; } ;
typedef  TYPE_1__ rss_item_t ;
typedef  TYPE_1__ rss_feed_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2( rss_feed_t *p_feeds, int i_feeds )
{
    for( int i_feed = 0; i_feed < i_feeds; i_feed++ )
    {
        rss_feed_t *p_feed = p_feeds+i_feed;
        for( int i_item = 0; i_item < p_feed->i_items; i_item++ )
        {
            rss_item_t *p_item = p_feed->p_items+i_item;
            FUNC0( p_item->psz_title );
            FUNC0( p_item->psz_link );
            FUNC0( p_item->psz_description );
        }
        FUNC0( p_feed->p_items );
        FUNC0( p_feed->psz_title);
        FUNC0( p_feed->psz_link );
        FUNC0( p_feed->psz_description );
        FUNC0( p_feed->psz_image );
        if( p_feed->p_pic != NULL )
            FUNC1( p_feed->p_pic );
        FUNC0( p_feed->psz_url );
    }
    FUNC0( p_feeds );
}