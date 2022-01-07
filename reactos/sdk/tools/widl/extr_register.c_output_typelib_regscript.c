
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char const* name; int stmts; int attrs; } ;
typedef TYPE_1__ typelib_t ;
struct TYPE_7__ {int cval; } ;
typedef TYPE_2__ expr_t ;
typedef int UUID ;


 int ATTR_CONTROL ;
 int ATTR_HELPSTRING ;
 int ATTR_HIDDEN ;
 int ATTR_ID ;
 int ATTR_LIBLCID ;
 int ATTR_RESTRICTED ;
 int ATTR_UUID ;
 int ATTR_VERSION ;
 int MAJORVERSION (unsigned int) ;
 int MINORVERSION (unsigned int) ;
 int add_output_to_resources (char*,char*) ;
 int format_uuid (int const*) ;
 void* get_attrp (int ,int ) ;
 unsigned int get_attrv (int ,int ) ;
 int indent ;
 scalar_t__ is_attr (int ,int ) ;
 int pointer_size ;
 int put_str (int ,char*,...) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strlen (char*) ;
 char* typelib_name ;
 int write_coclasses (int ,TYPE_1__ const*) ;
 int write_progids (int ) ;
 int write_typelib_interfaces (TYPE_1__ const*) ;
 char* xmalloc (scalar_t__) ;

void output_typelib_regscript( const typelib_t *typelib )
{
    const UUID *typelib_uuid = get_attrp( typelib->attrs, ATTR_UUID );
    const char *descr = get_attrp( typelib->attrs, ATTR_HELPSTRING );
    const expr_t *lcid_expr = get_attrp( typelib->attrs, ATTR_LIBLCID );
    unsigned int version = get_attrv( typelib->attrs, ATTR_VERSION );
    unsigned int flags = 0;
    char id_part[12] = "";

    char *resname = typelib_name;

    expr_t *expr;

    if (is_attr( typelib->attrs, ATTR_RESTRICTED )) flags |= 1;
    if (is_attr( typelib->attrs, ATTR_CONTROL )) flags |= 2;
    if (is_attr( typelib->attrs, ATTR_HIDDEN )) flags |= 4;

    put_str( indent, "HKCR\n" );
    put_str( indent++, "{\n" );

    put_str( indent, "NoRemove Typelib\n" );
    put_str( indent++, "{\n" );
    put_str( indent, "NoRemove '%s'\n", format_uuid( typelib_uuid ));
    put_str( indent++, "{\n" );
    put_str( indent, "'%u.%u' = s '%s'\n",
             MAJORVERSION(version), MINORVERSION(version), descr ? descr : typelib->name );
    put_str( indent++, "{\n" );
    expr = get_attrp( typelib->attrs, ATTR_ID );




    if (expr)
    {
        sprintf(id_part, "\\%d", expr->cval);
        resname = xmalloc( strlen(typelib_name) + 20 );
        sprintf(resname, "%s\\%d", typelib_name, expr->cval);
    }

    put_str( indent, "'%x' { %s = s '%%MODULE%%%s' }\n",
             lcid_expr ? lcid_expr->cval : 0, pointer_size == 8 ? "win64" : "win32", id_part );
    put_str( indent, "FLAGS = s '%u'\n", flags );
    put_str( --indent, "}\n" );
    put_str( --indent, "}\n" );
    put_str( --indent, "}\n" );

    put_str( indent, "NoRemove Interface\n" );
    put_str( indent++, "{\n" );
    write_typelib_interfaces( typelib );
    put_str( --indent, "}\n" );

    put_str( indent, "NoRemove CLSID\n" );
    put_str( indent++, "{\n" );
    write_coclasses( typelib->stmts, typelib );
    put_str( --indent, "}\n" );

    write_progids( typelib->stmts );
    put_str( --indent, "}\n" );



    add_output_to_resources( "WINE_REGISTRY", resname );

}
