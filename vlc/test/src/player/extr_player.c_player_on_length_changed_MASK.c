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
struct ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ctx* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  on_length_changed ; 

__attribute__((used)) static void
FUNC2(vlc_player_t *player, vlc_tick_t new_length,
                         void *data)
{
    struct ctx *ctx = FUNC1(player, data);
    FUNC0(on_length_changed, new_length);
}