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
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
struct size_vector {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int) ; 
 int FUNC3 (struct size_vector*,int) ; 

__attribute__((used)) static void
FUNC4(vlc_playlist_t *playlist,
                         vlc_playlist_item_t *const items[], size_t count,
                         ssize_t index_hint, struct size_vector *out)
{
    for (size_t i = 0; i < count; ++i)
    {
        ssize_t real_index = FUNC2(playlist, items[i],
                                                        index_hint);
        if (real_index != -1)
        {
            int ok = FUNC3(out, real_index);
            FUNC1(ok); /* cannot fail, space had been reserved */
            FUNC0(ok);
            /* the next item is expected after this one */
            index_hint = real_index + 1;
        }
    }
}