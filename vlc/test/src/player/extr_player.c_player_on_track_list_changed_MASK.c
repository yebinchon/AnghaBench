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
struct vlc_player_track {int dummy; } ;
struct report_track_list {int action; int /*<<< orphan*/  track; } ;
struct ctx {int dummy; } ;
typedef  enum vlc_player_list_action { ____Placeholder_vlc_player_list_action } vlc_player_list_action ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct report_track_list) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ctx* FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  on_track_list_changed ; 
 int /*<<< orphan*/  FUNC3 (struct vlc_player_track const*) ; 

__attribute__((used)) static void
FUNC4(vlc_player_t *player,
                             enum vlc_player_list_action action,
                             const struct vlc_player_track *track,
                             void *data)
{
    struct ctx *ctx = FUNC2(player, data);
    struct report_track_list report = {
        .action = action,
        .track = FUNC3(track),
    };
    FUNC1(report.track);
    FUNC0(on_track_list_changed, report);
}