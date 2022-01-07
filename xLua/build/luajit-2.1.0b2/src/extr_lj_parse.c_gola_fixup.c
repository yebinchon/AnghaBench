
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ slot; size_t startpc; int name; } ;
typedef TYPE_4__ VarInfo ;
struct TYPE_22__ {int vstart; int flags; scalar_t__ nactvar; TYPE_1__* prev; } ;
struct TYPE_21__ {int vtop; TYPE_3__* fs; int linenumber; TYPE_4__* vstack; } ;
struct TYPE_19__ {TYPE_2__* bcbase; } ;
struct TYPE_18__ {int line; } ;
struct TYPE_17__ {int flags; } ;
typedef TYPE_5__ LexState ;
typedef int GCstr ;
typedef TYPE_6__ FuncScope ;


 int FSCOPE_BREAK ;
 int FSCOPE_GOLA ;
 int FSCOPE_UPVAL ;
 int LJ_ERR_XBREAK ;
 int LJ_ERR_XLUNDEF ;
 int * NAME_BREAK ;
 int gola_close (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ gola_isgoto (TYPE_4__*) ;
 scalar_t__ gola_islabel (TYPE_4__*) ;
 int gola_patch (TYPE_5__*,TYPE_4__*,TYPE_4__*) ;
 int lj_lex_error (TYPE_5__*,int ,int ,...) ;
 int setgcrefnull (int ) ;
 int strdata (int *) ;
 int * strref (int ) ;

__attribute__((used)) static void gola_fixup(LexState *ls, FuncScope *bl)
{
  VarInfo *v = ls->vstack + bl->vstart;
  VarInfo *ve = ls->vstack + ls->vtop;
  for (; v < ve; v++) {
    GCstr *name = strref(v->name);
    if (name != ((void*)0)) {
      if (gola_islabel(v)) {
 VarInfo *vg;
 setgcrefnull(v->name);
 for (vg = v+1; vg < ve; vg++)
   if (strref(vg->name) == name && gola_isgoto(vg)) {
     if ((bl->flags&FSCOPE_UPVAL) && vg->slot > v->slot)
       gola_close(ls, vg);
     gola_patch(ls, vg, v);
   }
      } else if (gola_isgoto(v)) {
 if (bl->prev) {
   bl->prev->flags |= name == NAME_BREAK ? FSCOPE_BREAK : FSCOPE_GOLA;
   v->slot = bl->nactvar;
   if ((bl->flags & FSCOPE_UPVAL))
     gola_close(ls, v);
 } else {
   ls->linenumber = ls->fs->bcbase[v->startpc].line;
   if (name == NAME_BREAK)
     lj_lex_error(ls, 0, LJ_ERR_XBREAK);
   else
     lj_lex_error(ls, 0, LJ_ERR_XLUNDEF, strdata(name));
 }
      }
    }
  }
}
