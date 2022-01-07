
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int line_number; int input_name; } ;
struct TYPE_5__ {TYPE_1__ loc_info; int name; scalar_t__ defined; } ;
typedef TYPE_2__ type_t ;


 int error_loc (char*,int ,int ,int ) ;

__attribute__((used)) static void check_def(const type_t *t)
{
    if (t->defined)
        error_loc("%s: redefinition error; original definition was at %s:%d\n",
                  t->name, t->loc_info.input_name, t->loc_info.line_number);
}
