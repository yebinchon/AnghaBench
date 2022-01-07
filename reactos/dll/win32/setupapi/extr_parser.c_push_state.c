
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int stack_pos; int* stack; } ;
typedef enum parser_state { ____Placeholder_parser_state } parser_state ;


 int ASSERT (int) ;

__attribute__((used)) static inline void push_state( struct parser *parser, enum parser_state state )
{
    ASSERT( parser->stack_pos < sizeof(parser->stack)/sizeof(parser->stack[0]) );
    parser->stack[parser->stack_pos++] = state;
}
