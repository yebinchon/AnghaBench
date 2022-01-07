
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* nvlist_prtctl_t ;
struct TYPE_3__ {int nvprt_indent_mode; int nvprt_indentinc; int nvprt_fp; int nvprt_indent; } ;




 int fprintf (int ,char*,...) ;

__attribute__((used)) static void
indent(nvlist_prtctl_t pctl, int onemore)
{
 int depth;

 switch (pctl->nvprt_indent_mode) {
 case 129:
  (void) fprintf(pctl->nvprt_fp, "%*s",
      pctl->nvprt_indent + onemore * pctl->nvprt_indentinc, "");
  break;

 case 128:
  depth = pctl->nvprt_indent + onemore;
  while (depth-- > 0)
   (void) fprintf(pctl->nvprt_fp, "\t");
 }
}
