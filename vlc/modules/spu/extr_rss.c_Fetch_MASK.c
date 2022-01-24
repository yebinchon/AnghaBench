#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rss_feed_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ filter_t ;
struct TYPE_7__ {int b_fetched; int i_cur_item; scalar_t__ i_title; int /*<<< orphan*/  i_feeds; int /*<<< orphan*/  lock; scalar_t__ i_cur_char; scalar_t__ i_cur_feed; int /*<<< orphan*/ * p_feeds; } ;
typedef  TYPE_2__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 scalar_t__ scroll_title ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6( void *p_data )
{
    filter_t *p_filter = p_data;
    filter_sys_t *p_sys = p_filter->p_sys;

    FUNC2( p_filter, "Updating the rss feeds" );
    rss_feed_t *p_feeds = FUNC0( p_filter );
    if( !p_feeds )
    {
        FUNC3( p_filter, "Unable to fetch the feeds" );
        return;
    }

    rss_feed_t *p_old_feeds = p_sys->p_feeds;

    FUNC4( &p_sys->lock );
    /* Update the feeds */
    p_sys->p_feeds = p_feeds;
    p_sys->b_fetched = true;
    /* Set all current info to the original values */
    p_sys->i_cur_feed = 0;
    p_sys->i_cur_item = p_sys->i_title == scroll_title ? -1 : 0;
    p_sys->i_cur_char = 0;
    FUNC5( &p_sys->lock );

    if( p_old_feeds )
        FUNC1( p_old_feeds, p_sys->i_feeds );
}