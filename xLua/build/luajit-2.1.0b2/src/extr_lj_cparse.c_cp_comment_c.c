
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char c; } ;
typedef TYPE_1__ CPState ;


 char cp_get (TYPE_1__*) ;
 scalar_t__ cp_iseol (char) ;
 int cp_newline (TYPE_1__*) ;

__attribute__((used)) static void cp_comment_c(CPState *cp)
{
  do {
    if (cp_get(cp) == '*') {
      do {
 if (cp_get(cp) == '/') { cp_get(cp); return; }
      } while (cp->c == '*');
    }
    if (cp_iseol(cp->c)) cp_newline(cp);
  } while (cp->c != '\0');
}
