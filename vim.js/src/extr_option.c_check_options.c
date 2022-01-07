
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_3__ {int flags; int * var; int * fullname; } ;


 int P_STRING ;
 int check_string_option (int **) ;
 scalar_t__ get_varp (TYPE_1__*) ;
 TYPE_1__* options ;

void
check_options()
{
    int opt_idx;

    for (opt_idx = 0; options[opt_idx].fullname != ((void*)0); opt_idx++)
 if ((options[opt_idx].flags & P_STRING) && options[opt_idx].var != ((void*)0))
     check_string_option((char_u **)get_varp(&(options[opt_idx])));
}
