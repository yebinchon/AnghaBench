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
struct playback_repeat_changed_report {int repeat; } ;
struct callback_ctx {int /*<<< orphan*/  vec_playback_repeat_changed; } ;
typedef  enum vlc_playlist_playback_repeat { ____Placeholder_vlc_playlist_playback_repeat } vlc_playlist_playback_repeat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct playback_repeat_changed_report) ; 

__attribute__((used)) static void
FUNC2(vlc_playlist_t *playlist,
                                    enum vlc_playlist_playback_repeat repeat,
                                    void *userdata)
{
    FUNC0(playlist);
    struct callback_ctx *ctx = userdata;

    struct playback_repeat_changed_report report;
    report.repeat = repeat;
    FUNC1(&ctx->vec_playback_repeat_changed, report);
}