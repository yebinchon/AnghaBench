
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int attrs; } ;
typedef TYPE_1__ var_t ;


 int ATTR_PROPGET ;
 int ATTR_PROPPUT ;
 int ATTR_PROPPUTREF ;
 scalar_t__ is_attr (int ,int ) ;
 int strcat (char*,int ) ;
 int strcpy (char*,char*) ;

const char *get_name(const var_t *v)
{
    static char buffer[256];

    if (is_attr( v->attrs, ATTR_PROPGET ))
        strcpy( buffer, "get_" );
    else if (is_attr( v->attrs, ATTR_PROPPUT ))
        strcpy( buffer, "put_" );
    else if (is_attr( v->attrs, ATTR_PROPPUTREF ))
        strcpy( buffer, "putref_" );
    else
        buffer[0] = 0;
    strcat( buffer, v->name );
    return buffer;
}
