
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ ptrdiff_t ;
struct TYPE_15__ {int flags; scalar_t__ bclim; scalar_t__ bcbase; scalar_t__ pc; scalar_t__ numparams; int linedefined; } ;
struct TYPE_14__ {scalar_t__ tok; scalar_t__ sizebcstack; scalar_t__ bcstack; int linenumber; int lastline; TYPE_2__* fs; } ;
typedef TYPE_1__ LexState ;
typedef int GCproto ;
typedef TYPE_2__ FuncState ;
typedef int FuncScope ;
typedef int ExpDesc ;
typedef scalar_t__ BCPos ;
typedef int BCLine ;


 int BC_FNEW ;
 int BC_FUNCF ;
 int LJ_TPROTO ;
 int PROTO_CHILD ;
 int PROTO_FFI ;
 int PROTO_FIXUP_RETURN ;
 int PROTO_HAS_RETURN ;
 scalar_t__ TK_end ;
 int TK_function ;
 int VRELOCABLE ;
 int bcemit_AD (TYPE_2__*,int ,int ,int ) ;
 int const_gc (TYPE_2__*,int ,int ) ;
 int expr_init (int *,int ,int ) ;
 int * fs_finish (TYPE_1__*,int ) ;
 int fs_init (TYPE_1__*,TYPE_2__*) ;
 int fscope_begin (TYPE_2__*,int *,int ) ;
 int lex_match (TYPE_1__*,scalar_t__,int ,int ) ;
 int lj_lex_next (TYPE_1__*) ;
 int obj2gco (int *) ;
 int parse_chunk (TYPE_1__*) ;
 scalar_t__ parse_params (TYPE_1__*,int) ;

__attribute__((used)) static void parse_body(LexState *ls, ExpDesc *e, int needself, BCLine line)
{
  FuncState fs, *pfs = ls->fs;
  FuncScope bl;
  GCproto *pt;
  ptrdiff_t oldbase = pfs->bcbase - ls->bcstack;
  fs_init(ls, &fs);
  fscope_begin(&fs, &bl, 0);
  fs.linedefined = line;
  fs.numparams = (uint8_t)parse_params(ls, needself);
  fs.bcbase = pfs->bcbase + pfs->pc;
  fs.bclim = pfs->bclim - pfs->pc;
  bcemit_AD(&fs, BC_FUNCF, 0, 0);
  parse_chunk(ls);
  if (ls->tok != TK_end) lex_match(ls, TK_end, TK_function, line);
  pt = fs_finish(ls, (ls->lastline = ls->linenumber));
  pfs->bcbase = ls->bcstack + oldbase;
  pfs->bclim = (BCPos)(ls->sizebcstack - oldbase);

  expr_init(e, VRELOCABLE,
     bcemit_AD(pfs, BC_FNEW, 0, const_gc(pfs, obj2gco(pt), LJ_TPROTO)));



  if (!(pfs->flags & PROTO_CHILD)) {
    if (pfs->flags & PROTO_HAS_RETURN)
      pfs->flags |= PROTO_FIXUP_RETURN;
    pfs->flags |= PROTO_CHILD;
  }
  lj_lex_next(ls);
}
