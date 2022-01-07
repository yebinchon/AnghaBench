
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int debug; } ;


 int pp_flex_debug ;
 TYPE_1__ pp_status ;
 int ppy_debug ;

void wpp_set_debug( int lex_debug, int parser_debug, int msg_debug )
{
    pp_flex_debug = lex_debug;
    ppy_debug = parser_debug;
    pp_status.debug = msg_debug;
}
