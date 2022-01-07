
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvlist_prtctl {int dummy; } ;
struct nvlist_printops {int dummy; } ;
typedef struct nvlist_prtctl* nvlist_prtctl_t ;


 struct nvlist_printops* calloc (int,int) ;
 int free (struct nvlist_prtctl*) ;
 struct nvlist_prtctl* malloc (int) ;
 int prtctl_defaults (int ,struct nvlist_prtctl*,struct nvlist_printops*) ;
 int stdout ;

nvlist_prtctl_t
nvlist_prtctl_alloc(void)
{
 struct nvlist_prtctl *pctl;
 struct nvlist_printops *ops;

 if ((pctl = malloc(sizeof (*pctl))) == ((void*)0))
  return (((void*)0));

 if ((ops = calloc(1, sizeof (*ops))) == ((void*)0)) {
  free(pctl);
  return (((void*)0));
 }

 prtctl_defaults(stdout, pctl, ops);

 return (pctl);
}
