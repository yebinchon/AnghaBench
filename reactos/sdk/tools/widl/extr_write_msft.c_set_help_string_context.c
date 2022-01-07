
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int helpstringcontext; } ;
struct TYPE_9__ {TYPE_2__ typelib_header; TYPE_1__* typelib; } ;
typedef TYPE_3__ msft_typelib_t ;
struct TYPE_10__ {int cval; } ;
typedef TYPE_4__ expr_t ;
struct TYPE_7__ {int attrs; } ;


 int ATTR_HELPSTRINGCONTEXT ;
 TYPE_4__* get_attrp (int ,int ) ;

__attribute__((used)) static void set_help_string_context(msft_typelib_t *typelib)
{
    const expr_t *expr = get_attrp( typelib->typelib->attrs, ATTR_HELPSTRINGCONTEXT );
    if (expr) typelib->typelib_header.helpstringcontext = expr->cval;
}
