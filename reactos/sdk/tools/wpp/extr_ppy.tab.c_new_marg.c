
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* arg; scalar_t__ nnl; int type; } ;
typedef TYPE_1__ marg_t ;
typedef int def_arg_t ;


 TYPE_1__* pp_xmalloc (int) ;

__attribute__((used)) static marg_t *new_marg(char *str, def_arg_t type)
{
 marg_t *ma = pp_xmalloc(sizeof(marg_t));
 if(!ma)
  return ((void*)0);
 ma->arg = str;
 ma->type = type;
 ma->nnl = 0;
 return ma;
}
