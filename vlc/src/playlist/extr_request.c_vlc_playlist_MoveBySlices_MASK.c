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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,size_t,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,size_t*,size_t) ; 

__attribute__((used)) static void
FUNC3(vlc_playlist_t *playlist, size_t indices[],
                          size_t count, size_t target)
{
    FUNC0(count > 0);

    /* pass the last slice */
    size_t i;
    for (i = count - 1; i != 0; --i)
        if (indices[i - 1] != indices[i] - 1)
            break;

    /* regroup items to form a unique slice */
    size_t head = FUNC2(playlist, indices, i);

    /* move the unique slice to the requested target */
    if (head != target)
        FUNC1(playlist, head, count, target);
}