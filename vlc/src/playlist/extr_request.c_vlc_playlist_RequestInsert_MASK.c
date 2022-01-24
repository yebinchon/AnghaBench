#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_playlist_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ * const*,size_t) ; 

int
FUNC3(vlc_playlist_t *playlist, size_t index,
                           input_item_t *const media[], size_t count)
{
    FUNC0(playlist);

    size_t size = FUNC1(playlist);
    if (index > size)
        index = size;

    return FUNC2(playlist, index, media, count);
}