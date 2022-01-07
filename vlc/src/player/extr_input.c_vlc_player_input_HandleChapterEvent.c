
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_player_t ;
struct vlc_player_title {struct vlc_player_chapter* chapters; scalar_t__ chapter_count; } ;
struct vlc_player_input {size_t title_selected; int chapter_selected; TYPE_1__* titles; int * player; } ;
struct vlc_player_chapter {int dummy; } ;
struct vlc_input_event_chapter {size_t title; int seekpoint; } ;
struct TYPE_2__ {size_t count; struct vlc_player_title* array; } ;


 int assert (int) ;
 int on_chapter_selection_changed ;
 int vlc_player_SendEvent (int *,int ,struct vlc_player_title const*,size_t,struct vlc_player_chapter const*,size_t) ;

__attribute__((used)) static void
vlc_player_input_HandleChapterEvent(struct vlc_player_input *input,
                                    const struct vlc_input_event_chapter *ev)
{
    vlc_player_t *player = input->player;
    if (!input->titles || ev->title < 0 || ev->seekpoint < 0)
        return;

    assert((size_t)ev->title < input->titles->count);
    const struct vlc_player_title *title = &input->titles->array[ev->title];
    if (!title->chapter_count)
        return;

    assert(ev->seekpoint < (int)title->chapter_count);
    input->title_selected = ev->title;
    input->chapter_selected = ev->seekpoint;

    const struct vlc_player_chapter *chapter = &title->chapters[ev->seekpoint];
    vlc_player_SendEvent(player, on_chapter_selection_changed, title, ev->title,
                         chapter, ev->seekpoint);
}
