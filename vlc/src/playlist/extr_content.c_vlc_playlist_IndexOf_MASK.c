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
struct TYPE_4__ {int /*<<< orphan*/  items; } ;
typedef  TYPE_1__ vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

ssize_t
FUNC2(vlc_playlist_t *playlist, const vlc_playlist_item_t *item)
{
    FUNC0(playlist);

    ssize_t index;
    FUNC1(&playlist->items, item, &index);
    return index;
}