
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* nvlist_prtctl_t ;
struct TYPE_4__ {struct TYPE_4__* nvprt_custops; } ;


 int free (TYPE_1__*) ;

void
nvlist_prtctl_free(nvlist_prtctl_t pctl)
{
 if (pctl != ((void*)0)) {
  free(pctl->nvprt_custops);
  free(pctl);
 }
}
