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
struct ctx {int /*<<< orphan*/ * player; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static struct ctx *
FUNC1(vlc_player_t *player, void *data)
{
    FUNC0(data);
    struct ctx *ctx = data;
    FUNC0(player == ctx->player);
    return ctx;
}