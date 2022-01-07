
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_player_title_list ;
typedef int vlc_player_t ;
struct TYPE_8__ {scalar_t__ size; int ** data; } ;
typedef TYPE_2__ vec_on_titles_changed ;
struct TYPE_9__ {int size; int* data; } ;
typedef TYPE_3__ vec_on_title_selection_changed ;
struct TYPE_10__ {scalar_t__ size; } ;
typedef TYPE_4__ vec_on_chapter_selection_changed ;
struct vlc_player_title {int chapter_count; } ;
struct media_params {int title_count; int chapter_count; int null_names; } ;
struct TYPE_7__ {TYPE_4__ on_chapter_selection_changed; TYPE_3__ on_title_selection_changed; TYPE_2__ on_titles_changed; } ;
struct ctx {int wait; TYPE_1__ report; int * player; } ;
struct TYPE_11__ {size_t const chapter_idx; int title_idx; } ;


 struct media_params DEFAULT_MEDIA_PARAMS (int ) ;
 TYPE_5__ VEC_LAST (TYPE_4__*) ;
 int VLC_PLAYER_STATE_STOPPED ;
 int VLC_TICK_FROM_SEC (int) ;
 int assert (int) ;
 int assert_normal_state (struct ctx*) ;
 int player_set_next_mock_media (struct ctx*,char*,struct media_params*) ;
 int player_start (struct ctx*) ;
 int test_end (struct ctx*) ;
 int test_log (char*,int) ;
 int test_prestop (struct ctx*) ;
 int vlc_player_CondWait (int *,int *) ;
 int * vlc_player_GetTitleList (int *) ;
 int vlc_player_SelectChapter (int *,struct vlc_player_title const*,size_t const) ;
 int vlc_player_SelectTitle (int *,struct vlc_player_title const*) ;
 struct vlc_player_title* vlc_player_title_list_GetAt (int *,int) ;
 int wait_state (struct ctx*,int ) ;

__attribute__((used)) static void
test_titles(struct ctx *ctx, bool null_names)
{
    test_log("titles (null_names: %d)\n", null_names);
    vlc_player_t *player = ctx->player;

    struct media_params params = DEFAULT_MEDIA_PARAMS(VLC_TICK_FROM_SEC(100));
    params.title_count = 5;
    params.chapter_count = 2000;
    params.null_names = null_names;
    player_set_next_mock_media(ctx, "media1", &params);

    player_start(ctx);


    vlc_player_title_list *titles;
    {
        vec_on_titles_changed *vec = &ctx->report.on_titles_changed;
        while (vec->size == 0)
            vlc_player_CondWait(player, &ctx->wait);
        titles = vec->data[0];
        assert(titles != ((void*)0) && titles == vlc_player_GetTitleList(player));
    }


    const size_t last_chapter_idx = params.chapter_count - 1;
    {
        vec_on_title_selection_changed *vec =
            &ctx->report.on_title_selection_changed;
        while (vec->size == 0)
            vlc_player_CondWait(player, &ctx->wait);
        assert(vec->data[0] == 0);

        const struct vlc_player_title *title =
            vlc_player_title_list_GetAt(titles, 4);
        vlc_player_SelectTitle(player, title);

        while (vec->size == 1)
            vlc_player_CondWait(player, &ctx->wait);
        assert(vec->data[1] == 4);

        assert(title->chapter_count == params.chapter_count);
        vlc_player_SelectChapter(player, title, last_chapter_idx);
    }


    {
        vec_on_chapter_selection_changed *vec =
            &ctx->report.on_chapter_selection_changed;

        while (vec->size == 0 || VEC_LAST(vec).chapter_idx != last_chapter_idx)
            vlc_player_CondWait(player, &ctx->wait);
        assert(VEC_LAST(vec).title_idx == 4);
    }

    test_prestop(ctx);
    wait_state(ctx, VLC_PLAYER_STATE_STOPPED);
    assert_normal_state(ctx);
    test_end(ctx);
}
