
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* bl; } ;
struct TYPE_7__ {TYPE_5__* fs; } ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_2__ LexState ;


 int FSCOPE_BREAK ;
 int NAME_BREAK ;
 int VSTACK_GOTO ;
 int bcemit_jmp (TYPE_5__*) ;
 int gola_new (TYPE_2__*,int ,int ,int ) ;

__attribute__((used)) static void parse_break(LexState *ls)
{
  ls->fs->bl->flags |= FSCOPE_BREAK;
  gola_new(ls, NAME_BREAK, VSTACK_GOTO, bcemit_jmp(ls->fs));
}
