
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int name; int attrs; } ;
typedef TYPE_1__ type_t ;
typedef int UUID ;


 int ATTR_UUID ;
 int count_methods (TYPE_1__ const*) ;
 int format_uuid (int const*) ;
 int * get_attrp (int ,int ) ;
 int indent ;
 scalar_t__ is_local (int ) ;
 int is_object (TYPE_1__ const*) ;
 int put_str (int ,char*,...) ;
 int type_iface_get_inherit (TYPE_1__ const*) ;

__attribute__((used)) static void write_interface( const type_t *iface, const type_t *ps_factory )
{
    const UUID *uuid = get_attrp( iface->attrs, ATTR_UUID );
    const UUID *ps_uuid = get_attrp( ps_factory->attrs, ATTR_UUID );

    if (!uuid) return;
    if (!is_object( iface )) return;
    if (!type_iface_get_inherit(iface))
    {
        put_str( indent, "'%s' = s '%s'\n", format_uuid( uuid ), iface->name );
        return;
    }
    if (is_local( iface->attrs )) return;
    put_str( indent, "'%s' = s '%s'\n", format_uuid( uuid ), iface->name );
    put_str( indent, "{\n" );
    indent++;
    put_str( indent, "NumMethods = s %u\n", count_methods( iface ));
    put_str( indent, "ProxyStubClsid32 = s '%s'\n", format_uuid( ps_uuid ));
    indent--;
    put_str( indent, "}\n" );
}
