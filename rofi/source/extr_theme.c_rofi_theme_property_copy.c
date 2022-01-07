
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* def_value; int * ref; void* name; } ;
struct TYPE_8__ {TYPE_1__ link; int list; void* s; } ;
struct TYPE_9__ {int type; TYPE_2__ value; void* name; } ;
typedef TYPE_3__ Property ;





 int g_list_copy_deep (int ,int ,int *) ;
 void* g_strdup (void*) ;
 int rofi_g_list_strdup ;
 TYPE_3__* rofi_theme_property_create (int) ;

Property* rofi_theme_property_copy ( Property *p )
{
    Property *retv = rofi_theme_property_create ( p->type );
    retv->name = g_strdup ( p->name );

    switch ( p->type )
    {
    case 128:
        retv->value.s = g_strdup ( p->value.s );
        break;
    case 129:
        retv->value.list = g_list_copy_deep ( p->value.list, rofi_g_list_strdup, ((void*)0) );
        break;
    case 130:
        retv->value.link.name = g_strdup ( p->value.link.name );
        retv->value.link.ref = ((void*)0);
        if ( p->value.link.def_value ){
            retv->value.link.def_value = rofi_theme_property_copy(p->value.link.def_value);
        }
        break;
    default:
        retv->value = p->value;
    }
    return retv;
}
