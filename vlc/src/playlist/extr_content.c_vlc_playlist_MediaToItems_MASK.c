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
struct TYPE_4__ {int /*<<< orphan*/  idgen; } ;
typedef  TYPE_1__ vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(vlc_playlist_t *playlist, input_item_t *const media[],
                          size_t count, vlc_playlist_item_t *items[])
{
    FUNC1(playlist);
    size_t i;
    for (i = 0; i < count; ++i)
    {
        uint64_t id = playlist->idgen++;
        items[i] = FUNC2(media[i], id);
        if (FUNC0(!items[i]))
            break;
    }
    if (i < count)
    {
        /* allocation failure, release partial items */
        while (i)
            FUNC3(items[--i]);
        return VLC_ENOMEM;
    }
    return VLC_SUCCESS;
}