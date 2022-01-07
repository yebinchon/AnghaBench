
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_player_t ;
struct TYPE_10__ {float progress; int current_title; } ;
struct TYPE_11__ {TYPE_2__ states; } ;
struct vlc_player_input {size_t title_selected; size_t chapter_selected; TYPE_3__ ml; int thread; TYPE_5__* titles; int * player; } ;
struct TYPE_9__ {size_t count; int array; } ;
struct vlc_input_event_title {int action; size_t selected_idx; TYPE_1__ list; } ;
struct TYPE_12__ {int i_title_offset; int i_seekpoint_offset; } ;
typedef TYPE_4__ input_thread_private_t ;
struct TYPE_13__ {size_t count; int * array; } ;




 int assert (int) ;
 int input_SetPosition (int ,float,int) ;
 TYPE_4__* input_priv (int ) ;
 int on_title_selection_changed ;
 int on_titles_changed ;
 int vlc_assert_unreachable () ;
 int vlc_player_SelectTitleIdx (int *,int ) ;
 int vlc_player_SendEvent (int *,int ,TYPE_5__*,...) ;
 TYPE_5__* vlc_player_title_list_Create (int ,size_t,int const,int const) ;
 int vlc_player_title_list_Release (TYPE_5__*) ;

__attribute__((used)) static void
vlc_player_input_HandleTitleEvent(struct vlc_player_input *input,
                                  const struct vlc_input_event_title *ev)
{
    vlc_player_t *player = input->player;
    switch (ev->action)
    {
        case 129:
        {
            input_thread_private_t *input_th = input_priv(input->thread);
            const int title_offset = input_th->i_title_offset;
            const int chapter_offset = input_th->i_seekpoint_offset;

            if (input->titles)
                vlc_player_title_list_Release(input->titles);
            input->title_selected = input->chapter_selected = 0;
            input->titles =
                vlc_player_title_list_Create(ev->list.array, ev->list.count,
                                             title_offset, chapter_offset);
            vlc_player_SendEvent(player, on_titles_changed, input->titles);
            if (input->titles)
            {
                vlc_player_SendEvent(player, on_title_selection_changed,
                                     &input->titles->array[0], 0);
                if (input->ml.states.current_title >= 0 &&
                    (size_t)input->ml.states.current_title < ev->list.count)
                {
                    vlc_player_SelectTitleIdx(player, input->ml.states.current_title);
                }
            }
            break;
        }
        case 128:
            if (!input->titles)
                return;
            assert(ev->selected_idx < input->titles->count);
            input->title_selected = ev->selected_idx;
            vlc_player_SendEvent(player, on_title_selection_changed,
                                 &input->titles->array[input->title_selected],
                                 input->title_selected);
            if (input->ml.states.current_title >= 0 &&
                (size_t)input->ml.states.current_title == ev->selected_idx &&
                input->ml.states.progress > .0f)
            {
                input_SetPosition(input->thread, input->ml.states.progress, 0);



                input->ml.states.current_title = 0;
            }
            break;
        default:
            vlc_assert_unreachable();
    }
}
