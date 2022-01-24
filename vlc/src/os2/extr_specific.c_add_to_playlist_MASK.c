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
 int /*<<< orphan*/  VLC_INPUT_OPTION_TRUSTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char const* const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(vlc_playlist_t *playlist, const char *uri,
                            bool play_now, int options_count,
                            const char *const *options)
{
    input_item_t *media = FUNC1(uri, NULL);
    if (!media)
        return;
    FUNC0(media, options_count, options,
                          VLC_INPUT_OPTION_TRUSTED);

    FUNC4(playlist);
    FUNC3(playlist, media);
    if (play_now)
        FUNC5(playlist);
    FUNC6(playlist);
    FUNC2(media);
}