
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int input; } ;
typedef TYPE_1__ input_item_parser_id_t ;


 int free (TYPE_1__*) ;
 int input_Close (int ) ;
 int input_item_parser_id_Interrupt (TYPE_1__*) ;

void
input_item_parser_id_Release(input_item_parser_id_t *parser)
{
    input_item_parser_id_Interrupt(parser);
    input_Close(parser->input);
    free(parser);
}
