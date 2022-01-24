#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vlc_player_title_list {size_t count; struct vlc_player_title* array; int /*<<< orphan*/  rc; } ;
struct vlc_player_title {size_t chapter_count; int /*<<< orphan*/  name; struct vlc_player_chapter* chapters; int /*<<< orphan*/  flags; int /*<<< orphan*/  length; } ;
struct vlc_player_chapter {int /*<<< orphan*/  name; int /*<<< orphan*/  time; } ;
struct input_title_t {size_t i_seekpoint; TYPE_1__** seekpoint; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_length; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_time_offset; } ;
typedef  TYPE_1__ seekpoint_t ;
typedef  struct input_title_t input_title_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (size_t,int,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_title_t const*,size_t,int) ; 
 struct vlc_player_title_list* FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (size_t,int,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t,int) ; 
 struct vlc_player_chapter* FUNC5 (size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct vlc_player_title_list*) ; 

struct vlc_player_title_list *
FUNC8(input_title_t *const *array, size_t count,
                             int title_offset, int chapter_offset)
{
    if (count == 0)
        return NULL;

    /* Allocate the struct + the whole list */
    size_t size;
    if (FUNC3(count, sizeof(struct vlc_player_title), &size))
        return NULL;
    if (FUNC0(size, sizeof(struct vlc_player_title_list), &size))
        return NULL;
    struct vlc_player_title_list *titles = FUNC2(size);
    if (!titles)
        return NULL;

    FUNC6(&titles->rc);
    titles->count = count;

    for (size_t title_idx = 0; title_idx < titles->count; ++title_idx)
    {
        const struct input_title_t *input_title = array[title_idx];
        struct vlc_player_title *title = &titles->array[title_idx];

        title->name = FUNC1(input_title, title_idx, title_offset);
        title->length = input_title->i_length;
        title->flags = input_title->i_flags;
        const size_t seekpoint_count = input_title->i_seekpoint > 0 ?
                                       input_title->i_seekpoint : 0;
        title->chapter_count = seekpoint_count;

        struct vlc_player_chapter *chapters = title->chapter_count == 0 ? NULL :
            FUNC5(title->chapter_count, sizeof(*chapters));

        if (chapters)
        {
            for (size_t chapter_idx = 0; chapter_idx < title->chapter_count;
                 ++chapter_idx)
            {
                struct vlc_player_chapter *chapter = &chapters[chapter_idx];
                seekpoint_t *seekpoint = input_title->seekpoint[chapter_idx];

                chapter->name = FUNC4(seekpoint, chapter_idx,
                                                  chapter_offset);
                chapter->time = seekpoint->i_time_offset;
                if (!chapter->name) /* Will trigger the error path */
                    title->chapter_count = chapter_idx;
            }
        }
        else if (seekpoint_count > 0) /* Will trigger the error path */
            title->chapter_count = 0;

        title->chapters = chapters;

        if (!title->name || seekpoint_count != title->chapter_count)
        {
            /* Release titles up to title_idx */
            titles->count = title_idx;
            FUNC7(titles);
            return NULL;
        }
    }
    return titles;
}