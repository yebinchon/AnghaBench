
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_8__ {int flags; struct TYPE_8__* prev; int vstart; scalar_t__ nactvar; } ;
struct TYPE_7__ {scalar_t__ nactvar; scalar_t__ freereg; TYPE_3__* bl; TYPE_1__* ls; } ;
struct TYPE_6__ {int vtop; } ;
typedef TYPE_2__ FuncState ;
typedef TYPE_3__ FuncScope ;


 int lua_assert (int) ;

__attribute__((used)) static void fscope_begin(FuncState *fs, FuncScope *bl, int flags)
{
  bl->nactvar = (uint8_t)fs->nactvar;
  bl->flags = flags;
  bl->vstart = fs->ls->vtop;
  bl->prev = fs->bl;
  fs->bl = bl;
  lua_assert(fs->freereg == fs->nactvar);
}
