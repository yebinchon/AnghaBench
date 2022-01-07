
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {int top; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_23__ {int * prev; int flags; scalar_t__ bclim; int * bcbase; scalar_t__ numparams; scalar_t__ linedefined; } ;
struct TYPE_22__ {scalar_t__ sizeuv; } ;
struct TYPE_21__ {scalar_t__ tok; int * fs; int linenumber; scalar_t__ level; int chunkname; int chunkarg; TYPE_1__* L; } ;
typedef TYPE_2__ LexState ;
typedef TYPE_3__ GCproto ;
typedef TYPE_4__ FuncState ;
typedef int FuncScope ;


 int BC_FUNCV ;
 int PROTO_VARARG ;
 scalar_t__ TK_eof ;
 int bcemit_AD (TYPE_4__*,int ,int ,int ) ;
 int err_token (TYPE_2__*,scalar_t__) ;
 TYPE_3__* fs_finish (TYPE_2__*,int ) ;
 int fs_init (TYPE_2__*,TYPE_4__*) ;
 int fscope_begin (TYPE_4__*,int *,int ) ;
 int incr_top (TYPE_1__*) ;
 int lj_lex_next (TYPE_2__*) ;
 int lj_str_newlit (TYPE_1__*,char*) ;
 int lj_str_newz (TYPE_1__*,int ) ;
 int lua_assert (int) ;
 int parse_chunk (TYPE_2__*) ;
 int setstrV (TYPE_1__*,int ,int ) ;

GCproto *lj_parse(LexState *ls)
{
  FuncState fs;
  FuncScope bl;
  GCproto *pt;
  lua_State *L = ls->L;



  ls->chunkname = lj_str_newz(L, ls->chunkarg);

  setstrV(L, L->top, ls->chunkname);
  incr_top(L);
  ls->level = 0;
  fs_init(ls, &fs);
  fs.linedefined = 0;
  fs.numparams = 0;
  fs.bcbase = ((void*)0);
  fs.bclim = 0;
  fs.flags |= PROTO_VARARG;
  fscope_begin(&fs, &bl, 0);
  bcemit_AD(&fs, BC_FUNCV, 0, 0);
  lj_lex_next(ls);
  parse_chunk(ls);
  if (ls->tok != TK_eof)
    err_token(ls, TK_eof);
  pt = fs_finish(ls, ls->linenumber);
  L->top--;
  lua_assert(fs.prev == ((void*)0));
  lua_assert(ls->fs == ((void*)0));
  lua_assert(pt->sizeuv == 0);
  return pt;
}
