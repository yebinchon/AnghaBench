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
struct playback_order_changed_report {int order; } ;
struct callback_ctx {int /*<<< orphan*/  vec_playback_order_changed; } ;
typedef  enum vlc_playlist_playback_order { ____Placeholder_vlc_playlist_playback_order } vlc_playlist_playback_order ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct playback_order_changed_report) ; 

__attribute__((used)) static void
FUNC2(vlc_playlist_t *playlist,
                                   enum vlc_playlist_playback_order order,
                                   void *userdata)
{
    FUNC0(playlist);
    struct callback_ctx *ctx = userdata;

    struct playback_order_changed_report report;
    report.order = order;
    FUNC1(&ctx->vec_playback_order_changed, report);
}