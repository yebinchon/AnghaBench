
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ properties; } ;
struct TYPE_7__ {char* name; TYPE_3__* ref; TYPE_3__* def_value; } ;
struct TYPE_8__ {TYPE_1__ link; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_2__ value; int name; } ;
typedef TYPE_3__ Property ;


 scalar_t__ P_LINK ;
 scalar_t__ g_hash_table_contains (scalar_t__,char const*) ;
 TYPE_3__* g_hash_table_lookup (scalar_t__,char const*) ;
 int g_info (char*,char*,...) ;
 int g_warning (char*) ;
 TYPE_5__* rofi_theme ;

__attribute__((used)) static void rofi_theme_resolve_link_property ( Property *p, int depth )
{

    const char *name = p->value.link.name;
    g_info ( "Resolving link to %s", p->value.link.name);
    if ( depth > 20 ) {
        g_warning ( "Found more then 20 redirects for property. Stopping." );
        p->value.link.ref = p;
        return;
    }

    if ( rofi_theme->properties && g_hash_table_contains ( rofi_theme->properties, name ) ) {
        Property *pr = g_hash_table_lookup ( rofi_theme->properties, name );
        g_info ("Resolving link %s found: %s", p->value.link.name, pr->name);
        if ( pr->type == P_LINK ) {
            if ( pr->value.link.ref == ((void*)0) ) {
                rofi_theme_resolve_link_property ( pr, depth + 1 );
            }
            if ( pr->value.link.ref != pr ) {
                p->value.link.ref = pr->value.link.ref;
                return;
            }
        }
        else {
            p->value.link.ref = pr;
            return;
        }
    }

    if ( p->value.link.def_value ){
        p->value.link.ref = p->value.link.def_value;
        return;
    }


    p->value.link.ref = p;
}
