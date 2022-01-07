
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int input_item_t ;
struct TYPE_8__ {scalar_t__ input; void* userdata; TYPE_2__ const* cbs; int state; } ;
typedef TYPE_1__ input_item_parser_id_t ;
struct TYPE_9__ {scalar_t__ on_ended; } ;
typedef TYPE_2__ input_item_parser_cbs_t ;


 int INIT_S ;
 int assert (int) ;
 int free (TYPE_1__*) ;
 int input_Close (scalar_t__) ;
 scalar_t__ input_CreatePreparser (int *,int ,TYPE_1__*,int *) ;
 scalar_t__ input_Start (scalar_t__) ;
 int input_item_parser_InputEvent ;
 TYPE_1__* malloc (int) ;

input_item_parser_id_t *
input_item_Parse(input_item_t *item, vlc_object_t *obj,
                 const input_item_parser_cbs_t *cbs, void *userdata)
{
    assert(cbs && cbs->on_ended);
    input_item_parser_id_t *parser = malloc(sizeof(*parser));
    if (!parser)
        return ((void*)0);

    parser->state = INIT_S;
    parser->cbs = cbs;
    parser->userdata = userdata;
    parser->input = input_CreatePreparser(obj, input_item_parser_InputEvent,
                                          parser, item);
    if (!parser->input || input_Start(parser->input))
    {
        if (parser->input)
            input_Close(parser->input);
        free(parser);
        return ((void*)0);
    }
    return parser;
}
