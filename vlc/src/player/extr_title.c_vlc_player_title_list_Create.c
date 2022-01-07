
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vlc_player_title_list {size_t count; struct vlc_player_title* array; int rc; } ;
struct vlc_player_title {size_t chapter_count; int name; struct vlc_player_chapter* chapters; int flags; int length; } ;
struct vlc_player_chapter {int name; int time; } ;
struct input_title_t {size_t i_seekpoint; TYPE_1__** seekpoint; int i_flags; int i_length; } ;
struct TYPE_3__ {int i_time_offset; } ;
typedef TYPE_1__ seekpoint_t ;
typedef struct input_title_t input_title_t ;


 scalar_t__ add_overflow (size_t,int,size_t*) ;
 int input_title_GetName (struct input_title_t const*,size_t,int) ;
 struct vlc_player_title_list* malloc (size_t) ;
 scalar_t__ mul_overflow (size_t,int,size_t*) ;
 int seekpoint_GetName (TYPE_1__*,size_t,int) ;
 struct vlc_player_chapter* vlc_alloc (size_t,int) ;
 int vlc_atomic_rc_init (int *) ;
 int vlc_player_title_list_Release (struct vlc_player_title_list*) ;

struct vlc_player_title_list *
vlc_player_title_list_Create(input_title_t *const *array, size_t count,
                             int title_offset, int chapter_offset)
{
    if (count == 0)
        return ((void*)0);


    size_t size;
    if (mul_overflow(count, sizeof(struct vlc_player_title), &size))
        return ((void*)0);
    if (add_overflow(size, sizeof(struct vlc_player_title_list), &size))
        return ((void*)0);
    struct vlc_player_title_list *titles = malloc(size);
    if (!titles)
        return ((void*)0);

    vlc_atomic_rc_init(&titles->rc);
    titles->count = count;

    for (size_t title_idx = 0; title_idx < titles->count; ++title_idx)
    {
        const struct input_title_t *input_title = array[title_idx];
        struct vlc_player_title *title = &titles->array[title_idx];

        title->name = input_title_GetName(input_title, title_idx, title_offset);
        title->length = input_title->i_length;
        title->flags = input_title->i_flags;
        const size_t seekpoint_count = input_title->i_seekpoint > 0 ?
                                       input_title->i_seekpoint : 0;
        title->chapter_count = seekpoint_count;

        struct vlc_player_chapter *chapters = title->chapter_count == 0 ? ((void*)0) :
            vlc_alloc(title->chapter_count, sizeof(*chapters));

        if (chapters)
        {
            for (size_t chapter_idx = 0; chapter_idx < title->chapter_count;
                 ++chapter_idx)
            {
                struct vlc_player_chapter *chapter = &chapters[chapter_idx];
                seekpoint_t *seekpoint = input_title->seekpoint[chapter_idx];

                chapter->name = seekpoint_GetName(seekpoint, chapter_idx,
                                                  chapter_offset);
                chapter->time = seekpoint->i_time_offset;
                if (!chapter->name)
                    title->chapter_count = chapter_idx;
            }
        }
        else if (seekpoint_count > 0)
            title->chapter_count = 0;

        title->chapters = chapters;

        if (!title->name || seekpoint_count != title->chapter_count)
        {

            titles->count = title_idx;
            vlc_player_title_list_Release(titles);
            return ((void*)0);
        }
    }
    return titles;
}
