
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* nvlist_prtctl_t ;
typedef enum nvlist_indent_mode { ____Placeholder_nvlist_indent_mode } nvlist_indent_mode ;
struct TYPE_3__ {int nvprt_indent_mode; int nvprt_indent; int nvprt_indentinc; } ;


 int NVLIST_INDENT_ABS ;
 int NVLIST_INDENT_TABBED ;

void
nvlist_prtctl_setindent(nvlist_prtctl_t pctl, enum nvlist_indent_mode mode,
    int start, int inc)
{
 if (mode < NVLIST_INDENT_ABS || mode > NVLIST_INDENT_TABBED)
  mode = NVLIST_INDENT_TABBED;

 if (start < 0)
  start = 0;

 if (inc < 0)
  inc = 1;

 pctl->nvprt_indent_mode = mode;
 pctl->nvprt_indent = start;
 pctl->nvprt_indentinc = inc;
}
