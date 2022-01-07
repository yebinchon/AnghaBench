
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 TYPE_1__* commit_order_arg_map ;
 size_t opt_commit_order ;

const char *
commit_order_arg()
{
 return commit_order_arg_map[opt_commit_order].name;
}
