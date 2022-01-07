
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char decpoint; int buff; } ;
struct TYPE_7__ {int r; } ;
typedef TYPE_1__ SemInfo ;
typedef TYPE_2__ LexState ;


 int TK_NUMBER ;
 int buff2d (int ,int *) ;
 int buffreplace (TYPE_2__*,char,char) ;
 char getlocaledecpoint () ;
 int lexerror (TYPE_2__*,char*,int ) ;

__attribute__((used)) static void trydecpoint (LexState *ls, SemInfo *seminfo) {
  char old = ls->decpoint;
  ls->decpoint = getlocaledecpoint();
  buffreplace(ls, old, ls->decpoint);
  if (!buff2d(ls->buff, &seminfo->r)) {

    buffreplace(ls, ls->decpoint, '.');
    lexerror(ls, "malformed number", TK_NUMBER);
  }
}
