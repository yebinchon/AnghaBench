
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sval; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef int LexState ;
typedef TYPE_2__ ExpDesc ;


 int VKSTR ;
 int expr_init (TYPE_2__*,int ,int ) ;
 int lex_str (int *) ;

__attribute__((used)) static void expr_str(LexState *ls, ExpDesc *e)
{
  expr_init(e, VKSTR, 0);
  e->u.sval = lex_str(ls);
}
