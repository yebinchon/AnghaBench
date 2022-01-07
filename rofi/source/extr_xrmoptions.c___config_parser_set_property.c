
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char gchar ;
typedef int gboolean ;
struct TYPE_10__ {char** str; unsigned int* num; scalar_t__* snum; } ;
struct TYPE_12__ {scalar_t__ type; char* mem; int name; void* source; TYPE_1__ value; } ;
typedef TYPE_3__ XrmOption ;
struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_11__ {char* s; unsigned int b; scalar_t__ i; TYPE_5__* list; } ;
struct TYPE_13__ {size_t type; TYPE_2__ value; } ;
typedef TYPE_4__ Property ;
typedef TYPE_5__ GList ;


 void* CONFIG_FILE_THEME ;
 int FALSE ;
 size_t P_BOOLEAN ;
 size_t P_INTEGER ;
 size_t P_LIST ;
 size_t P_STRING ;
 int * PropertyTypeName ;
 int TRUE ;
 int g_free (char*) ;
 TYPE_5__* g_list_next (TYPE_5__*) ;
 char* g_strdup (char*) ;
 char* g_strdup_printf (char*,int ,int ) ;
 char* g_strjoin (char*,char*,char*,int *) ;
 scalar_t__ xrm_Boolean ;
 scalar_t__ xrm_Number ;
 scalar_t__ xrm_SNumber ;
 scalar_t__ xrm_String ;

__attribute__((used)) static gboolean __config_parser_set_property ( XrmOption *option, const Property *p, char **error )
{
    if ( option->type == xrm_String ) {
        if ( p->type != P_STRING && p->type != P_LIST ) {
            *error = g_strdup_printf ( "Option: %s needs to be set with a string not a %s.", option->name, PropertyTypeName[p->type] );
            return TRUE;
        }
        gchar *value = ((void*)0);
        if ( p->type == P_LIST ) {
            for ( GList *iter = p->value.list; iter != ((void*)0); iter = g_list_next ( iter ) ) {
                if ( value == ((void*)0) ) {
                    value = g_strdup ( (char *) ( iter->data ) );
                }
                else {
                    char *nv = g_strjoin ( ",", value, (char *) ( iter->data ), ((void*)0) );
                    g_free ( value );
                    value = nv;
                }
            }
        }
        else {
            value = g_strdup ( p->value.s );
        }
        if ( ( option )->mem != ((void*)0) ) {
            g_free ( option->mem );
            option->mem = ((void*)0);
        }
        *( option->value.str ) = value;


        ( option )->mem = *( option->value.str );
        option->source = CONFIG_FILE_THEME;
    }
    else if ( option->type == xrm_Number ) {
        if ( p->type != P_INTEGER ) {
            *error = g_strdup_printf ( "Option: %s needs to be set with a number not a %s.", option->name, PropertyTypeName[p->type] );
            return TRUE;
        }
        *( option->value.snum ) = p->value.i;
        option->source = CONFIG_FILE_THEME;
    }
    else if ( option->type == xrm_SNumber ) {
        if ( p->type != P_INTEGER ) {
            *error = g_strdup_printf ( "Option: %s needs to be set with a number not a %s.", option->name, PropertyTypeName[p->type] );
            return TRUE;
        }
        *( option->value.num ) = (unsigned int ) ( p->value.i );
        option->source = CONFIG_FILE_THEME;
    }
    else if ( option->type == xrm_Boolean ) {
        if ( p->type != P_BOOLEAN ) {
            *error = g_strdup_printf ( "Option: %s needs to be set with a boolean not a %s.", option->name, PropertyTypeName[p->type] );
            return TRUE;
        }
        *( option->value.num ) = ( p->value.b );
        option->source = CONFIG_FILE_THEME;
    }
    else {

        *error = g_strdup_printf ( "Option: %s is not of a supported type: %s.", option->name, PropertyTypeName[p->type] );
        return TRUE;
    }
    return FALSE;
}
