#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_2__ {scalar_t__ size; int /*<<< orphan*/ ** data; } ;
struct ctx {int /*<<< orphan*/  played_medias; TYPE_1__ next_medias; } ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ctx* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static input_item_t *
FUNC5(vlc_player_t *player, void *data)
{
    struct ctx *ctx = FUNC1(player, data);
    input_item_t *next_media;
    if (ctx->next_medias.size > 0)
    {
        next_media = ctx->next_medias.data[0];
        FUNC4(&ctx->next_medias, 0);

        FUNC2(next_media);
        bool success = FUNC3(&ctx->played_medias, next_media);
        FUNC0(success);
    }
    else
        next_media = NULL;
    return next_media;
}