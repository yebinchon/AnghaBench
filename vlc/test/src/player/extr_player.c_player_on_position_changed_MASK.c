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
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
struct report_position {float pos; int /*<<< orphan*/  time; } ;
struct ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct report_position) ; 
 struct ctx* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  on_position_changed ; 

__attribute__((used)) static void
FUNC2(vlc_player_t *player, vlc_tick_t time,
                           float pos, void *data)
{
    struct ctx *ctx = FUNC1(player, data);
    struct report_position report = {
        .time = time,
        .pos = pos,
    };
    FUNC0(on_position_changed, report);
}