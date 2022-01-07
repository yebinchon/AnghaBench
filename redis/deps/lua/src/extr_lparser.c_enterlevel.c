
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* L; } ;
struct TYPE_5__ {scalar_t__ nCcalls; } ;
typedef TYPE_2__ LexState ;


 scalar_t__ LUAI_MAXCCALLS ;
 int luaX_lexerror (TYPE_2__*,char*,int ) ;

__attribute__((used)) static void enterlevel (LexState *ls) {
  if (++ls->L->nCcalls > LUAI_MAXCCALLS)
 luaX_lexerror(ls, "chunk has too many syntax levels", 0);
}
