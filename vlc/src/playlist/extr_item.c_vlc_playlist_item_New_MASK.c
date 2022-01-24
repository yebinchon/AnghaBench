#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * media; int /*<<< orphan*/  id; int /*<<< orphan*/  rc; } ;
typedef  TYPE_1__ vlc_playlist_item_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

vlc_playlist_item_t *
FUNC4(input_item_t *media, uint64_t id)
{
    vlc_playlist_item_t *item = FUNC1(sizeof(*item));
    if (FUNC2(!item))
        return NULL;

    FUNC3(&item->rc);
    item->id = id;
    item->media = media;
    FUNC0(media);
    return item;
}