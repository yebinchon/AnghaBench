
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* fname; scalar_t__ nerr; } ;
typedef TYPE_1__ parser_state ;


 int yy_scan_string (char const*) ;
 int yyparse (TYPE_1__*) ;

int
node_parse_string(parser_state* p, const char* prog)
{
  int n;


  p->fname = "-e";
  yy_scan_string(prog);
  n = yyparse(p);
  if (n == 0 && p->nerr == 0) {
    return 0;
  }
  return 1;
}
