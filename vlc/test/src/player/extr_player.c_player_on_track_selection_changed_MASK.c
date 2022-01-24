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
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  vlc_es_id_t ;
struct report_track_selection {int /*<<< orphan*/ * selected_id; int /*<<< orphan*/ * unselected_id; } ;
struct ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct report_track_selection) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ctx* FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  on_track_selection_changed ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(vlc_player_t *player,
                                  vlc_es_id_t *unselected_id,
                                  vlc_es_id_t *selected_id, void *data)
{
    struct ctx *ctx = FUNC2(player, data);
    struct report_track_selection report = {
        .unselected_id = unselected_id ? FUNC3(unselected_id) : NULL,
        .selected_id = selected_id ? FUNC3(selected_id) : NULL,
    };
    FUNC1(!!unselected_id == !!report.unselected_id);
    FUNC1(!!selected_id == !!report.selected_id);
    FUNC0(on_track_selection_changed, report);
}