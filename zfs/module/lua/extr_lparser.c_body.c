
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef int expdesc ;
struct TYPE_18__ {TYPE_14__* f; } ;
struct TYPE_17__ {int linenumber; } ;
struct TYPE_16__ {int linedefined; int lastlinedefined; } ;
typedef TYPE_1__ LexState ;
typedef TYPE_2__ FuncState ;
typedef int BlockCnt ;


 int TK_END ;
 int TK_FUNCTION ;
 TYPE_14__* addprototype (TYPE_1__*) ;
 int adjustlocalvars (TYPE_1__*,int) ;
 int check_match (TYPE_1__*,int ,int ,int) ;
 int checknext (TYPE_1__*,char) ;
 int close_func (TYPE_1__*) ;
 int codeclosure (TYPE_1__*,int *) ;
 int new_localvarliteral (TYPE_1__*,char*) ;
 int open_func (TYPE_1__*,TYPE_2__*,int *) ;
 int parlist (TYPE_1__*) ;
 int statlist (TYPE_1__*) ;

__attribute__((used)) static void body (LexState *ls, expdesc *e, int ismethod, int line) {

  FuncState new_fs;
  BlockCnt bl;
  new_fs.f = addprototype(ls);
  new_fs.f->linedefined = line;
  open_func(ls, &new_fs, &bl);
  checknext(ls, '(');
  if (ismethod) {
    new_localvarliteral(ls, "self");
    adjustlocalvars(ls, 1);
  }
  parlist(ls);
  checknext(ls, ')');
  statlist(ls);
  new_fs.f->lastlinedefined = ls->linenumber;
  check_match(ls, TK_END, TK_FUNCTION, line);
  codeclosure(ls, e);
  close_func(ls);
}
