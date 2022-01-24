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
struct report_category_delay {int cat; int /*<<< orphan*/  delay; } ;
struct ctx {int dummy; } ;
typedef  enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct report_category_delay) ; 
 struct ctx* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  on_category_delay_changed ; 

__attribute__((used)) static void
FUNC2(vlc_player_t *player,
                                 enum es_format_category_e cat, vlc_tick_t new_delay,
                                 void *data)
{
    struct ctx *ctx = FUNC1(player, data);
    struct report_category_delay report = {
        .cat = cat,
        .delay = new_delay,
    };
    FUNC0(on_category_delay_changed, report);
}