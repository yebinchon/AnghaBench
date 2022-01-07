
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int attrs; } ;
typedef TYPE_1__ typelib_t ;
struct TYPE_7__ {int name; int attrs; } ;
typedef TYPE_2__ type_t ;
typedef int UUID ;


 int ATTR_DISPINTERFACE ;
 int ATTR_OLEAUTOMATION ;
 int ATTR_UUID ;
 int ATTR_VERSION ;
 int MAJORVERSION (unsigned int) ;
 int MINORVERSION (unsigned int) ;
 int format_uuid (int const*) ;
 int * get_attrp (int ,int ) ;
 unsigned int get_attrv (int ,int ) ;
 int indent ;
 int is_attr (int ,int ) ;
 int is_object (TYPE_2__ const*) ;
 int put_str (int ,char*,...) ;

__attribute__((used)) static void write_typelib_interface( const type_t *iface, const typelib_t *typelib )
{
    const UUID *typelib_uuid = get_attrp( typelib->attrs, ATTR_UUID );
    const UUID *uuid = get_attrp( iface->attrs, ATTR_UUID );
    unsigned int version = get_attrv( typelib->attrs, ATTR_VERSION );

    if (!uuid) return;
    if (!is_object( iface )) return;
    if (!is_attr( iface->attrs, ATTR_OLEAUTOMATION ) && !is_attr( iface->attrs, ATTR_DISPINTERFACE ))
        return;
    put_str( indent, "'%s' = s '%s'\n", format_uuid( uuid ), iface->name );
    put_str( indent, "{\n" );
    indent++;
    put_str( indent, "ProxyStubClsid = s '{00020424-0000-0000-C000-000000000046}'\n" );
    put_str( indent, "ProxyStubClsid32 = s '{00020424-0000-0000-C000-000000000046}'\n" );
    if (version)
        put_str( indent, "TypeLib = s '%s' { val Version = s '%u.%u' }\n",
                 format_uuid( typelib_uuid ), MAJORVERSION(version), MINORVERSION(version) );
    else
        put_str( indent, "TypeLib = s '%s'", format_uuid( typelib_uuid ));
    indent--;
    put_str( indent, "}\n" );
}
