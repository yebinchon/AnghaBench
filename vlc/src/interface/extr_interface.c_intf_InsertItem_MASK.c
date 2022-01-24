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
typedef  int /*<<< orphan*/  libvlc_int_t ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 scalar_t__ VLC_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned int,char const* const*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(libvlc_int_t *libvlc, const char *mrl, unsigned optc,
                    const char *const *optv, unsigned flags)
{
    input_item_t *item = FUNC1(mrl, NULL);

    if (FUNC4(item == NULL))
        return -1;

    int ret = -1;

    if (FUNC0(item, optc, optv, flags) == VLC_SUCCESS)
    {
        vlc_playlist_t *playlist = FUNC3(libvlc);
        if (playlist)
        {
            FUNC6(playlist);
            ret = FUNC5(playlist, 0, item);
            FUNC7(playlist);
        }
    }
    FUNC2(item);
    return ret;
}