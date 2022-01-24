#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int size; scalar_t__* data; } ;
typedef  TYPE_2__ vec_on_state_changed ;
struct TYPE_4__ {TYPE_2__ on_state_changed; } ;
struct ctx {TYPE_1__ report; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ VLC_PLAYER_STATE_STARTED ; 
 scalar_t__ VLC_PLAYER_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct ctx *ctx)
{
    vec_on_state_changed *vec = &ctx->report.on_state_changed;
    FUNC1(vec->size > 1);
    FUNC1(vec->data[0] == VLC_PLAYER_STATE_STARTED);
    FUNC1(FUNC0(vec) == VLC_PLAYER_STATE_STOPPED);
}