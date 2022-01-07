
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ current; } ;
typedef TYPE_1__ LexState ;


 scalar_t__ EOZ ;
 int TK_STRING ;
 int lexerror (TYPE_1__*,char const*,int ) ;
 int save_and_next (TYPE_1__*) ;

__attribute__((used)) static void esccheck (LexState *ls, int c, const char *msg) {
  if (!c) {
    if (ls->current != EOZ)
      save_and_next(ls);
    lexerror(ls, msg, TK_STRING);
  }
}
