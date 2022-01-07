
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct lconv {char* decimal_point; } ;
struct TYPE_8__ {char decpoint; int buff; } ;
struct TYPE_7__ {int r; } ;
typedef TYPE_1__ SemInfo ;
typedef TYPE_2__ LexState ;


 int TK_NUMBER ;
 int buffreplace (TYPE_2__*,char,char) ;
 struct lconv* localeconv () ;
 int luaO_str2d (int ,int *) ;
 int luaX_lexerror (TYPE_2__*,char*,int ) ;
 int luaZ_buffer (int ) ;

__attribute__((used)) static void trydecpoint (LexState *ls, SemInfo *seminfo) {

  struct lconv *cv = localeconv();
  char old = ls->decpoint;
  ls->decpoint = (cv ? cv->decimal_point[0] : '.');
  buffreplace(ls, old, ls->decpoint);
  if (!luaO_str2d(luaZ_buffer(ls->buff), &seminfo->r)) {

    buffreplace(ls, ls->decpoint, '.');
    luaX_lexerror(ls, "malformed number", TK_NUMBER);
  }
}
