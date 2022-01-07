
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char c; } ;
typedef TYPE_1__ CPState ;


 int cp_get (TYPE_1__*) ;
 int cp_iseol (int ) ;

__attribute__((used)) static void cp_comment_cpp(CPState *cp)
{
  while (!cp_iseol(cp_get(cp)) && cp->c != '\0')
    ;
}
