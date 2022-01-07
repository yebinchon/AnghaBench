
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ opt_mailmap ;

const char *
log_custom_pretty_arg(void)
{
 return opt_mailmap
  ? "--pretty=format:commit %m %H %P%x00%aN <%aE> %ad%x00%s%x00%N"
  : "--pretty=format:commit %m %H %P%x00%an <%ae> %ad%x00%s%x00%N";
}
