
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int value; } ;
struct TYPE_7__ {int length; } ;
struct vlc_input_event {int type; int subitems; TYPE_1__ state; TYPE_3__ times; } ;
typedef int input_thread_t ;
struct TYPE_8__ {int userdata; TYPE_2__* cbs; int state; } ;
typedef TYPE_4__ input_item_parser_id_t ;
struct TYPE_6__ {int (* on_subtree_added ) (int ,int ,int ) ;int (* on_ended ) (int ,int,int ) ;} ;


 int END_S ;




 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int input_GetItem (int *) ;
 int input_item_SetDuration (int ,int ) ;
 int stub1 (int ,int,int ) ;
 int stub2 (int ,int ,int ) ;

__attribute__((used)) static void
input_item_parser_InputEvent(input_thread_t *input,
                             const struct vlc_input_event *event, void *parser_)
{
    input_item_parser_id_t *parser = parser_;

    switch (event->type)
    {
        case 128:
            input_item_SetDuration(input_GetItem(input), event->times.length);
            break;
        case 130:
            parser->state = event->state.value;
            break;
        case 131:
        {
            int status = parser->state == END_S ? VLC_SUCCESS : VLC_EGENERIC;
            parser->cbs->on_ended(input_GetItem(input), status, parser->userdata);
            break;
        }
        case 129:
            if (parser->cbs->on_subtree_added)
                parser->cbs->on_subtree_added(input_GetItem(input),
                                              event->subitems, parser->userdata);
            break;
        default:
            break;
    }
}
