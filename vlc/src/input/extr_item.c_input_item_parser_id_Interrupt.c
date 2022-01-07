
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int input; } ;
typedef TYPE_1__ input_item_parser_id_t ;


 int input_Stop (int ) ;

void
input_item_parser_id_Interrupt(input_item_parser_id_t *parser)
{
    input_Stop(parser->input);
}
