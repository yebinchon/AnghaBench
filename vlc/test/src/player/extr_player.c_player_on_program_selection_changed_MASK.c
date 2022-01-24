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
struct report_program_selection {int unselected_id; int selected_id; } ;
struct ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct report_program_selection) ; 
 struct ctx* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  on_program_selection_changed ; 

__attribute__((used)) static void
FUNC2(vlc_player_t *player,
                                    int unselected_id, int selected_id,
                                    void *data)
{
    struct ctx *ctx = FUNC1(player, data);
    struct report_program_selection report = {
        .unselected_id = unselected_id,
        .selected_id = selected_id,
    };
    FUNC0(on_program_selection_changed, report);
}