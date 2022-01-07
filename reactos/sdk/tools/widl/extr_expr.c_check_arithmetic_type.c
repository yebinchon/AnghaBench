
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int type_t ;
struct expr_loc {char* attr; TYPE_1__* v; } ;
struct TYPE_2__ {int loc_info; } ;


 int error_loc_info (int *,char*,char*,char*) ;
 int is_float_type (int const*) ;
 int is_integer_type (int const*) ;

__attribute__((used)) static void check_arithmetic_type(const struct expr_loc *expr_loc,
                                  const type_t *cont_type, const type_t *type)
{
    if (!cont_type || (!is_integer_type(type) && !is_float_type(type)))
        error_loc_info(&expr_loc->v->loc_info, "arithmetic type required in expression%s%s\n",
                       expr_loc->attr ? " for attribute " : "",
                       expr_loc->attr ? expr_loc->attr : "");
}
