
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 TYPE_1__* ignore_space_arg_map ;
 size_t opt_ignore_space ;

const char *
ignore_space_arg()
{
 return ignore_space_arg_map[opt_ignore_space].name;
}
