
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* fs; int tok; } ;
struct TYPE_8__ {scalar_t__ framesize; scalar_t__ freereg; scalar_t__ nactvar; } ;
typedef TYPE_2__ LexState ;


 int lex_opt (TYPE_2__*,char) ;
 int lua_assert (int) ;
 int parse_isend (int ) ;
 int parse_stmt (TYPE_2__*) ;
 int synlevel_begin (TYPE_2__*) ;
 int synlevel_end (TYPE_2__*) ;

__attribute__((used)) static void parse_chunk(LexState *ls)
{
  int islast = 0;
  synlevel_begin(ls);
  while (!islast && !parse_isend(ls->tok)) {
    islast = parse_stmt(ls);
    lex_opt(ls, ';');
    lua_assert(ls->fs->framesize >= ls->fs->freereg &&
        ls->fs->freereg >= ls->fs->nactvar);
    ls->fs->freereg = ls->fs->nactvar;
  }
  synlevel_end(ls);
}
