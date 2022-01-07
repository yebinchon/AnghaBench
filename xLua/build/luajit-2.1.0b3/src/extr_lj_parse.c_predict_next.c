
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int cTValue ;
struct TYPE_18__ {int name; } ;
struct TYPE_17__ {size_t* uvmap; int kt; TYPE_1__* bcbase; } ;
struct TYPE_16__ {int len; } ;
struct TYPE_15__ {int L; TYPE_2__* vstack; } ;
struct TYPE_14__ {int name; } ;
struct TYPE_13__ {int ins; } ;
typedef TYPE_3__ LexState ;
typedef TYPE_4__ GCstr ;
typedef TYPE_5__ FuncState ;
typedef size_t BCPos ;
typedef int BCIns ;





 size_t bc_d (int ) ;
 int bc_op (int ) ;
 TYPE_4__* gco2str (int ) ;
 int gcref (int ) ;
 int lj_str_newlit (int ,char*) ;
 int * lj_tab_getstr (int ,int ) ;
 int strcmp (int ,char*) ;
 int strdata (TYPE_4__*) ;
 int tvhaskslot (int *) ;
 size_t tvkslot (int *) ;
 TYPE_6__ var_get (TYPE_3__*,TYPE_5__*,size_t) ;

__attribute__((used)) static int predict_next(LexState *ls, FuncState *fs, BCPos pc)
{
  BCIns ins = fs->bcbase[pc].ins;
  GCstr *name;
  cTValue *o;
  switch (bc_op(ins)) {
  case 129:
    name = gco2str(gcref(var_get(ls, fs, bc_d(ins)).name));
    break;
  case 128:
    name = gco2str(gcref(ls->vstack[fs->uvmap[bc_d(ins)]].name));
    break;
  case 130:

    o = lj_tab_getstr(fs->kt, lj_str_newlit(ls->L, "pairs"));
    if (o && tvhaskslot(o) && tvkslot(o) == bc_d(ins))
      return 1;
    o = lj_tab_getstr(fs->kt, lj_str_newlit(ls->L, "next"));
    if (o && tvhaskslot(o) && tvkslot(o) == bc_d(ins))
      return 1;
    return 0;
  default:
    return 0;
  }
  return (name->len == 5 && !strcmp(strdata(name), "pairs")) ||
  (name->len == 4 && !strcmp(strdata(name), "next"));
}
