
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; int attrs; } ;
typedef TYPE_1__ type_t ;
typedef int UUID ;


 int ATTR_HELPSTRING ;
 int ATTR_PROGID ;
 int ATTR_UUID ;
 int ATTR_VIPROGID ;
 int format_uuid (int const*) ;
 void* get_attrp (int ,int ) ;
 int indent ;
 int put_str (int ,char*,...) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int write_progid( const type_t *class )
{
    const UUID *uuid = get_attrp( class->attrs, ATTR_UUID );
    const char *descr = get_attrp( class->attrs, ATTR_HELPSTRING );
    const char *progid = get_attrp( class->attrs, ATTR_PROGID );
    const char *vi_progid = get_attrp( class->attrs, ATTR_VIPROGID );

    if (!uuid) return 0;
    if (!descr) descr = class->name;

    if (progid)
    {
        put_str( indent, "'%s' = s '%s'\n", progid, descr );
        put_str( indent++, "{\n" );
        put_str( indent, "CLSID = s '%s'\n", format_uuid( uuid ) );
        put_str( --indent, "}\n" );
    }
    if (vi_progid)
    {
        put_str( indent, "'%s' = s '%s'\n", vi_progid, descr );
        put_str( indent++, "{\n" );
        put_str( indent, "CLSID = s '%s'\n", format_uuid( uuid ) );
        if (progid && strcmp( progid, vi_progid )) put_str( indent, "CurVer = s '%s'\n", progid );
        put_str( --indent, "}\n" );
    }
    return 1;
}
