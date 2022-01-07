
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lval; } ;
typedef TYPE_1__ parser_state ;


 int node_free (int ) ;

void
node_parse_free(parser_state* p)
{
  node_free(p->lval);
}
