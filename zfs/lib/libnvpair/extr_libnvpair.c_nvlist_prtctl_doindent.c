
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_prtctl_t ;


 int indent (int ,int) ;

void
nvlist_prtctl_doindent(nvlist_prtctl_t pctl, int onemore)
{
 indent(pctl, onemore);
}
