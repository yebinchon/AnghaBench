
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lineno; int tline; int * fname; int * lval; scalar_t__ nerr; } ;
typedef TYPE_1__ parser_state ;



void
node_parse_init(parser_state* p)
{
  p->nerr = 0;
  p->lval = ((void*)0);
  p->fname = ((void*)0);
  p->lineno = 1;
  p->tline = 1;
}
