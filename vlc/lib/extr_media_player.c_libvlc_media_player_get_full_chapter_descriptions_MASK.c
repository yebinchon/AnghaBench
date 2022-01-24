#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_player_title_list ;
typedef  int /*<<< orphan*/  vlc_player_t ;
struct vlc_player_title {size_t chapter_count; int /*<<< orphan*/  length; struct vlc_player_chapter* chapters; int /*<<< orphan*/ * player; } ;
struct vlc_player_chapter {scalar_t__ name; int /*<<< orphan*/  time; } ;
typedef  struct vlc_player_title const libvlc_media_player_t ;
struct TYPE_6__ {void* i_time_offset; void* i_duration; int /*<<< orphan*/ * psz_name; } ;
typedef  TYPE_1__ libvlc_chapter_description_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vlc_player_title const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,size_t) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 TYPE_1__** FUNC5 (size_t,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct vlc_player_title* FUNC9 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11( libvlc_media_player_t *p_mi,
                                                      int i_chapters_of_title,
                                                      libvlc_chapter_description_t *** pp_chapters )
{
    FUNC1( p_mi );

    int ret = -1;

    vlc_player_t *player = p_mi->player;
    FUNC7(player);

    vlc_player_title_list *titles = FUNC6(player);
    if (!titles)
        goto end;

    size_t titles_count = FUNC10(titles);
    if (i_chapters_of_title < (int) titles_count)
       goto end;

    const struct vlc_player_title *title =
        FUNC9(titles, i_chapters_of_title);
    FUNC1(title);

    size_t i_chapter_count = title->chapter_count;

    libvlc_chapter_description_t **descs =
        FUNC5(i_chapter_count, sizeof(*descs));
    if (i_chapter_count > 0 && !descs)
        goto end;

    for (size_t i = 0; i < i_chapter_count; i++)
    {
        const struct vlc_player_chapter *chapter = &title->chapters[i];
        libvlc_chapter_description_t *desc = FUNC3(sizeof(*desc));
        if (!desc)
        {
            FUNC2(descs, i);
            goto end;
        }

        descs[i] = desc;

        vlc_tick_t chapter_end = i < i_chapter_count - 1
                               ? title->chapters[i + 1].time
                               : title->length;
        desc->i_time_offset = FUNC0(chapter->time);
        desc->psz_name = chapter->name ? FUNC4(chapter->name) : NULL;
        desc->i_duration = FUNC0(chapter_end) - desc->i_time_offset;
    }

    ret = i_chapter_count;
    *pp_chapters = descs;

end:
    FUNC8(player);
    return ret;
}