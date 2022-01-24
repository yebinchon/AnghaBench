#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char gchar ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_10__ {char** str; unsigned int* num; scalar_t__* snum; } ;
struct TYPE_12__ {scalar_t__ type; char* mem; int /*<<< orphan*/  name; void* source; TYPE_1__ value; } ;
typedef  TYPE_3__ XrmOption ;
struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_11__ {char* s; unsigned int b; scalar_t__ i; TYPE_5__* list; } ;
struct TYPE_13__ {size_t type; TYPE_2__ value; } ;
typedef  TYPE_4__ Property ;
typedef  TYPE_5__ GList ;

/* Variables and functions */
 void* CONFIG_FILE_THEME ; 
 int /*<<< orphan*/  FALSE ; 
 size_t P_BOOLEAN ; 
 size_t P_INTEGER ; 
 size_t P_LIST ; 
 size_t P_STRING ; 
 int /*<<< orphan*/ * PropertyTypeName ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_5__* FUNC1 (TYPE_5__*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ xrm_Boolean ; 
 scalar_t__ xrm_Number ; 
 scalar_t__ xrm_SNumber ; 
 scalar_t__ xrm_String ; 

__attribute__((used)) static gboolean FUNC5 ( XrmOption *option, const Property *p, char **error  )
{
    if ( option->type == xrm_String  ) {
        if ( p->type != P_STRING && p->type != P_LIST ) {
            *error = FUNC3 ( "Option: %s needs to be set with a string not a %s.", option->name, PropertyTypeName[p->type] );
            return TRUE;
        }
        gchar *value = NULL;
        if ( p->type == P_LIST ) {
            for ( GList *iter = p->value.list; iter != NULL; iter = FUNC1 ( iter ) ) {
                if ( value == NULL ) {
                    value = FUNC2 ( (char *) ( iter->data ) );
                }
                else {
                    char *nv = FUNC4 ( ",", value, (char *) ( iter->data ), NULL );
                    FUNC0 ( value );
                    value = nv;
                }
            }
        }
        else {
            value = FUNC2 ( p->value.s );
        }
        if ( ( option )->mem != NULL ) {
            FUNC0 ( option->mem );
            option->mem = NULL;
        }
        *( option->value.str ) = value;

        // Memory
        ( option )->mem = *( option->value.str );
        option->source  = CONFIG_FILE_THEME;
    }
    else if ( option->type == xrm_Number ) {
        if ( p->type != P_INTEGER ) {
            *error = FUNC3 ( "Option: %s needs to be set with a number not a %s.", option->name, PropertyTypeName[p->type] );
            return TRUE;
        }
        *( option->value.snum ) = p->value.i;
        option->source          = CONFIG_FILE_THEME;
    }
    else if ( option->type == xrm_SNumber ) {
        if ( p->type != P_INTEGER ) {
            *error = FUNC3 ( "Option: %s needs to be set with a number not a %s.", option->name, PropertyTypeName[p->type] );
            return TRUE;
        }
        *( option->value.num ) = (unsigned int ) ( p->value.i );
        option->source         = CONFIG_FILE_THEME;
    }
    else if ( option->type == xrm_Boolean ) {
        if ( p->type != P_BOOLEAN ) {
            *error = FUNC3 ( "Option: %s needs to be set with a boolean not a %s.", option->name, PropertyTypeName[p->type] );
            return TRUE;
        }
        *( option->value.num ) = ( p->value.b );
        option->source         = CONFIG_FILE_THEME;
    }
    else {
        // TODO add type
        *error = FUNC3 ( "Option: %s is not of a supported type: %s.", option->name, PropertyTypeName[p->type] );
        return TRUE;
    }
    return FALSE;
}