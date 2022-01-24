#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* media; } ;
typedef  TYPE_2__ vlc_playlist_item_t ;
struct vlc_playlist_sort_criterion {int dummy; } ;
struct vlc_playlist_item_meta {TYPE_2__* item; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 struct vlc_playlist_item_meta* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_playlist_item_meta*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct vlc_playlist_item_meta*,struct vlc_playlist_sort_criterion const*,size_t) ; 

__attribute__((used)) static struct vlc_playlist_item_meta *
FUNC6(vlc_playlist_item_t *item,
                           const struct vlc_playlist_sort_criterion criteria[],
                           size_t count)
{
    /* assume that NULL representation is all-zeros */
    struct vlc_playlist_item_meta *meta = FUNC0(1, sizeof(*meta));
    if (FUNC2(!meta))
        return NULL;

    meta->item = item;

    FUNC3(&item->media->lock);
    int ret = FUNC5(meta, criteria, count);
    FUNC4(&item->media->lock);

    if (FUNC2(ret != VLC_SUCCESS))
    {
        FUNC1(meta);
        return NULL;
    }

    return meta;
}