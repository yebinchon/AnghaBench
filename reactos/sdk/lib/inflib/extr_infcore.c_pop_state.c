
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {size_t stack_pos; int * stack; int state; } ;



__attribute__((used)) __inline static void pop_state( struct parser *parser )
{

  parser->state = parser->stack[--parser->stack_pos];
}
