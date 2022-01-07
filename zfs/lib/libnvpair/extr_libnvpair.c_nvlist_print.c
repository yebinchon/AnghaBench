
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvlist_prtctl {int dummy; } ;
typedef int nvlist_t ;
typedef int FILE ;


 int nvlist_print_with_indent (int *,struct nvlist_prtctl*) ;
 int prtctl_defaults (int *,struct nvlist_prtctl*,int *) ;

void
nvlist_print(FILE *fp, nvlist_t *nvl)
{
 struct nvlist_prtctl pc;

 prtctl_defaults(fp, &pc, ((void*)0));
 nvlist_print_with_indent(nvl, &pc);
}
