#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t const size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_4__ vec_on_current_media_changed ;
struct media_params {int dummy; } ;
struct TYPE_7__ {size_t size; } ;
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_5__ {TYPE_4__ on_current_media_changed; } ;
struct ctx {TYPE_3__ played_medias; TYPE_2__ next_medias; TYPE_1__ report; } ;

/* Variables and functions */
 size_t FUNC0 (char const**) ; 
 struct media_params FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLC_PLAYER_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct ctx*,char const*,struct media_params*) ; 
 int /*<<< orphan*/  FUNC7 (struct ctx*,float) ; 
 int /*<<< orphan*/  FUNC8 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC9 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct ctx*) ; 
 int /*<<< orphan*/  FUNC12 (struct ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(struct ctx *ctx)
{
    FUNC10("next_media\n");
    const char *media_names[] = { "media1", "media2", "media3" };
    const size_t media_count = FUNC0(media_names);

    struct media_params params = FUNC1(FUNC2(100));

    for (size_t i = 0; i < media_count; ++i)
        FUNC6(ctx, media_names[i], &params);
    FUNC7(ctx, 4.f);
    FUNC8(ctx);

    FUNC11(ctx);
    FUNC12(ctx, VLC_PLAYER_STATE_STOPPED);
    FUNC5(ctx);

    {
        vec_on_current_media_changed *vec = &ctx->report.on_current_media_changed;

        FUNC3(vec->size == media_count);
        FUNC3(ctx->next_medias.size == 0);
        for (size_t i = 0; i < ctx->played_medias.size; ++i)
            FUNC4(vec->data[i], media_names[i]);
    }

    FUNC9(ctx);
}