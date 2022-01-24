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
struct items_added_report {size_t index; size_t count; int /*<<< orphan*/  state; } ;
struct callback_ctx {int /*<<< orphan*/  vec_items_added; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct items_added_report) ; 

__attribute__((used)) static void
FUNC3(vlc_playlist_t *playlist, size_t index,
                        vlc_playlist_item_t *const items[], size_t count,
                        void *userdata)
{
    FUNC0(items);
    struct callback_ctx *ctx = userdata;

    struct items_added_report report;
    report.index = index;
    report.count = count;
    FUNC1(&report.state, playlist);
    FUNC2(&ctx->vec_items_added, report);
}