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
typedef  int /*<<< orphan*/  vlc_player_t ;
struct TYPE_5__ {int size; } ;
typedef  TYPE_2__ vec_on_current_media_changed ;
struct media_params {int dummy; } ;
struct TYPE_4__ {TYPE_2__ on_current_media_changed; } ;
struct ctx {TYPE_2__ played_medias; int /*<<< orphan*/  extra_start_count; int /*<<< orphan*/  wait; TYPE_1__ report; int /*<<< orphan*/ * player; } ;
typedef  int /*<<< orphan*/  input_item_t ;

/* Variables and functions */
 size_t FUNC0 (char const**) ; 
 struct media_params FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  VLC_PLAYER_STATE_PLAYING ; 
 int /*<<< orphan*/  VLC_PLAYER_STATE_STARTED ; 
 int /*<<< orphan*/  VLC_PLAYER_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct ctx*,char const*,struct media_params*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct ctx *ctx)
{
    FUNC10("current_media\n");
    const char *media_names[] = { "media1", "media2", "media3" };
    const size_t media_count = FUNC0(media_names);

    vlc_player_t *player = ctx->player;
    struct media_params params = FUNC1(FUNC3(100));

    FUNC7(ctx, media_names[0], &params, false);
    FUNC8(ctx);

    FUNC14(ctx, VLC_PLAYER_STATE_PLAYING);

    /* Call vlc_player_SetCurrentMedia for the remaining medias interrupting
     * the player and without passing by the next_media provider. */
    {
        vec_on_current_media_changed *vec = &ctx->report.on_current_media_changed;
        FUNC4(vec->size == 1);
        for (size_t i = 1; i <= media_count; ++i)
        {
            while (vec->size != i)
                FUNC12(player, &ctx->wait);

            input_item_t *last_media = FUNC2(vec);
            FUNC4(*last_media);
            FUNC4(last_media == FUNC13(player));
            FUNC4(last_media == FUNC2(&ctx->played_medias));
            FUNC5(last_media, media_names[i - 1]);

            if (i < media_count)
            {
                /* Next vlc_player_SetCurrentMedia() call should be
                 * asynchronous since we are still playing. Therefore,
                 * vlc_player_GetCurrentMedia() should return the last one. */
                FUNC7(ctx, "ignored", &params, true);
                FUNC4(FUNC13(player) == last_media);

                /* The previous media is ignored due to this call */
                FUNC7(ctx, media_names[i], &params, false);
            }
        }
    }

    FUNC11(ctx);
    FUNC14(ctx, VLC_PLAYER_STATE_STOPPED);
    FUNC6(ctx);

    /* Test that the player can be played again with the same media */
    FUNC8(ctx);
    ctx->extra_start_count++; /* Since we play the same media  */

    /* Current state is already stopped, wait first for started then */
    FUNC14(ctx, VLC_PLAYER_STATE_STARTED);
    FUNC14(ctx, VLC_PLAYER_STATE_STOPPED);

    FUNC6(ctx);

    /* Playback is stopped: vlc_player_SetCurrentMedia should be synchronous */
    FUNC7(ctx, media_names[0], &params, false);
    FUNC4(FUNC13(player) == FUNC2(&ctx->played_medias));

    FUNC8(ctx);

    FUNC14(ctx, VLC_PLAYER_STATE_STARTED);
    FUNC14(ctx, VLC_PLAYER_STATE_STOPPED);

    FUNC9(ctx);
}