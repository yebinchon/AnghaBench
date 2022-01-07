
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int helpfile; int varflags; } ;
struct TYPE_8__ {TYPE_2__ typelib_header; TYPE_1__* typelib; } ;
typedef TYPE_3__ msft_typelib_t ;
struct TYPE_6__ {int attrs; } ;


 int ATTR_HELPFILE ;
 int ctl2_alloc_string (TYPE_3__*,char*) ;
 char* get_attrp (int ,int ) ;

__attribute__((used)) static void set_help_file_name(msft_typelib_t *typelib)
{
    char *str = get_attrp( typelib->typelib->attrs, ATTR_HELPFILE );

    if (str)
    {
        int offset = ctl2_alloc_string(typelib, str);
        if (offset != -1)
        {
            typelib->typelib_header.helpfile = offset;
            typelib->typelib_header.varflags |= 0x10;
        }
    }
}
