
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ k; } ;
struct ConsControl {scalar_t__ na; scalar_t__ nh; scalar_t__ tostore; TYPE_3__ v; TYPE_3__* t; } ;
typedef TYPE_3__ expdesc ;
struct TYPE_22__ {TYPE_2__* f; } ;
struct TYPE_18__ {char token; } ;
struct TYPE_21__ {int linenumber; TYPE_1__ t; TYPE_5__* fs; } ;
struct TYPE_19__ {int * code; } ;
typedef TYPE_4__ LexState ;
typedef TYPE_5__ FuncState ;


 int OP_NEWTABLE ;
 int SETARG_B (int ,int ) ;
 int SETARG_C (int ,int ) ;
 scalar_t__ VRELOCABLE ;
 scalar_t__ VVOID ;
 int check_match (TYPE_4__*,char,char,int) ;
 int checknext (TYPE_4__*,char) ;
 int closelistfield (TYPE_5__*,struct ConsControl*) ;
 int field (TYPE_4__*,struct ConsControl*) ;
 int init_exp (TYPE_3__*,scalar_t__,int) ;
 int lastlistfield (TYPE_5__*,struct ConsControl*) ;
 int luaK_codeABC (TYPE_5__*,int ,int ,int ,int ) ;
 int luaK_exp2nextreg (TYPE_5__*,TYPE_3__*) ;
 int luaO_int2fb (scalar_t__) ;
 int lua_assert (int) ;
 scalar_t__ testnext (TYPE_4__*,char) ;

__attribute__((used)) static void constructor (LexState *ls, expdesc *t) {


  FuncState *fs = ls->fs;
  int line = ls->linenumber;
  int pc = luaK_codeABC(fs, OP_NEWTABLE, 0, 0, 0);
  struct ConsControl cc;
  cc.na = cc.nh = cc.tostore = 0;
  cc.t = t;
  init_exp(t, VRELOCABLE, pc);
  init_exp(&cc.v, VVOID, 0);
  luaK_exp2nextreg(ls->fs, t);
  checknext(ls, '{');
  do {
    lua_assert(cc.v.k == VVOID || cc.tostore > 0);
    if (ls->t.token == '}') break;
    closelistfield(fs, &cc);
    field(ls, &cc);
  } while (testnext(ls, ',') || testnext(ls, ';'));
  check_match(ls, '}', '{', line);
  lastlistfield(fs, &cc);
  SETARG_B(fs->f->code[pc], luaO_int2fb(cc.na));
  SETARG_C(fs->f->code[pc], luaO_int2fb(cc.nh));
}
