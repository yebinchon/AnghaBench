
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int token; } ;
struct TYPE_19__ {int linenumber; TYPE_1__ t; } ;
typedef TYPE_2__ LexState ;




 int TK_END ;







 int block (TYPE_2__*) ;
 int breakstat (TYPE_2__*) ;
 int check_match (TYPE_2__*,int ,int const,int) ;
 int exprstat (TYPE_2__*) ;
 int forstat (TYPE_2__*,int) ;
 int funcstat (TYPE_2__*,int) ;
 int ifstat (TYPE_2__*,int) ;
 int localfunc (TYPE_2__*) ;
 int localstat (TYPE_2__*) ;
 int luaX_next (TYPE_2__*) ;
 int repeatstat (TYPE_2__*,int) ;
 int retstat (TYPE_2__*) ;
 int testnext (TYPE_2__*,int const) ;
 int whilestat (TYPE_2__*,int) ;

__attribute__((used)) static int statement (LexState *ls) {
  int line = ls->linenumber;
  switch (ls->t.token) {
    case 132: {
      ifstat(ls, line);
      return 0;
    }
    case 128: {
      whilestat(ls, line);
      return 0;
    }
    case 135: {
      luaX_next(ls);
      block(ls);
      check_match(ls, TK_END, 135, line);
      return 0;
    }
    case 134: {
      forstat(ls, line);
      return 0;
    }
    case 130: {
      repeatstat(ls, line);
      return 0;
    }
    case 133: {
      funcstat(ls, line);
      return 0;
    }
    case 131: {
      luaX_next(ls);
      if (testnext(ls, 133))
        localfunc(ls);
      else
        localstat(ls);
      return 0;
    }
    case 129: {
      retstat(ls);
      return 1;
    }
    case 136: {
      luaX_next(ls);
      breakstat(ls);
      return 1;
    }
    default: {
      exprstat(ls);
      return 0;
    }
  }
}
