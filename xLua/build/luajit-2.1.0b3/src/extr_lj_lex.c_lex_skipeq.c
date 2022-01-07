
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char c; } ;
typedef TYPE_1__ LexState ;
typedef char LexChar ;


 char lex_savenext (TYPE_1__*) ;
 int lua_assert (int) ;

__attribute__((used)) static int lex_skipeq(LexState *ls)
{
  int count = 0;
  LexChar s = ls->c;
  lua_assert(s == '[' || s == ']');
  while (lex_savenext(ls) == '=')
    count++;
  return (ls->c == s) ? count : (-count) - 1;
}
