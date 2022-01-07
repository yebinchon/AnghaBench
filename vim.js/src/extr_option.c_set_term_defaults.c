
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vimoption {int flags; scalar_t__ var; int ** def_val; int * fullname; } ;
typedef int char_u ;


 int P_ALLOCED ;
 int P_DEF_ALLOCED ;
 size_t VI_DEFAULT ;
 int free_string_option (int *) ;
 scalar_t__ istermoption (struct vimoption*) ;
 struct vimoption* options ;

void
set_term_defaults()
{
    struct vimoption *p;

    for (p = &options[0]; p->fullname != ((void*)0); p++)
    {
 if (istermoption(p) && p->def_val[VI_DEFAULT] != *(char_u **)(p->var))
 {
     if (p->flags & P_DEF_ALLOCED)
     {
  free_string_option(p->def_val[VI_DEFAULT]);
  p->flags &= ~P_DEF_ALLOCED;
     }
     p->def_val[VI_DEFAULT] = *(char_u **)(p->var);
     if (p->flags & P_ALLOCED)
     {
  p->flags |= P_DEF_ALLOCED;
  p->flags &= ~P_ALLOCED;
     }
 }
    }
}
