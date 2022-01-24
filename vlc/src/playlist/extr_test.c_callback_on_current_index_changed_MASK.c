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
struct current_index_changed_report {int /*<<< orphan*/  current; } ;
struct callback_ctx {int /*<<< orphan*/  vec_current_index_changed; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct current_index_changed_report) ; 

__attribute__((used)) static void
FUNC2(vlc_playlist_t *playlist, ssize_t index,
                                  void *userdata)
{
    FUNC0(playlist);
    struct callback_ctx *ctx = userdata;

    struct current_index_changed_report report;
    report.current = index;
    FUNC1(&ctx->vec_current_index_changed, report);
}