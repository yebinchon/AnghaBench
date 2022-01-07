
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int const* attrs; } ;
typedef TYPE_1__ type_t ;
typedef int attr_list_t ;


 int ATTR_CONTEXTHANDLE ;
 int ATTR_IN ;
 int ATTR_OUT ;
 int ATTR_STRICTCONTEXTHANDLE ;
 unsigned char NDR_CONTEXT_HANDLE_CANNOT_BE_NULL ;
 unsigned char NDR_STRICT_CONTEXT_HANDLE ;
 scalar_t__ is_attr (int const*,int ) ;
 scalar_t__ is_ptr (TYPE_1__ const*) ;

__attribute__((used)) static unsigned char get_contexthandle_flags( const type_t *iface, const attr_list_t *attrs,
                                              const type_t *type )
{
    unsigned char flags = 0;

    if (is_attr(iface->attrs, ATTR_STRICTCONTEXTHANDLE)) flags |= NDR_STRICT_CONTEXT_HANDLE;

    if (is_ptr(type) &&
        !is_attr( type->attrs, ATTR_CONTEXTHANDLE ) &&
        !is_attr( attrs, ATTR_CONTEXTHANDLE ))
        flags |= 0x80;

    if (is_attr(attrs, ATTR_IN))
    {
        flags |= 0x40;
        if (!is_attr(attrs, ATTR_OUT)) flags |= NDR_CONTEXT_HANDLE_CANNOT_BE_NULL;
    }
    if (is_attr(attrs, ATTR_OUT)) flags |= 0x20;

    return flags;
}
