
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nerr; } ;
typedef TYPE_1__ parser_state ;
typedef int FILE ;


 int yyparse (TYPE_1__*) ;
 int yyrestart (int *) ;

int
node_parse_input(parser_state* p, FILE* f, const char* fname)
{
  int n;


  yyrestart(f);
  n = yyparse(p);
  if (n == 0 && p->nerr == 0) {
    return 0;
  }
  return 1;
}
