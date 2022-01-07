
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int attrs; int name; int type; } ;
typedef TYPE_1__ var_t ;
typedef enum pass { ____Placeholder_pass } pass ;


 int ATTR_CONTEXTHANDLE ;
 int ATTR_IN ;
 int ATTR_OUT ;
 int PASS_IN ;
 int PASS_OUT ;
 int PASS_RETURN ;
 int TRUE ;
 unsigned int get_required_buffer_size_type (int ,int ,int ,int ,unsigned int*) ;
 int is_attr (int ,int ) ;
 scalar_t__ is_ptrchain_attr (TYPE_1__ const*,int ) ;
 int is_string_type (int ,int ) ;

__attribute__((used)) static unsigned int get_required_buffer_size(const var_t *var, unsigned int *alignment, enum pass pass)
{
    int in_attr = is_attr(var->attrs, ATTR_IN);
    int out_attr = is_attr(var->attrs, ATTR_OUT);

    if (!in_attr && !out_attr)
        in_attr = 1;

    *alignment = 0;

    if ((pass == PASS_IN && in_attr) || (pass == PASS_OUT && out_attr) ||
        pass == PASS_RETURN)
    {
        if (is_ptrchain_attr(var, ATTR_CONTEXTHANDLE))
        {
            *alignment = 4;
            return 20;
        }

        if (!is_string_type(var->attrs, var->type))
            return get_required_buffer_size_type(var->type, var->name,
                                                 var->attrs, TRUE, alignment);
    }
    return 0;
}
