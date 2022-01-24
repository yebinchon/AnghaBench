#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gpointer ;
struct TYPE_14__ {unsigned int num_widgets; struct TYPE_14__** widgets; int /*<<< orphan*/  properties; struct TYPE_14__* parent; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ ThemeWidget ;
struct TYPE_16__ {scalar_t__ next; int /*<<< orphan*/ * prev; scalar_t__ data; } ;
struct TYPE_15__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ Property ;
typedef  TYPE_3__ GList ;
typedef  int /*<<< orphan*/  GHashTableIter ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 TYPE_3__* FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 TYPE_3__* FUNC7 (TYPE_3__*) ; 
 TYPE_3__* FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char) ; 
 int /*<<< orphan*/  FUNC12 (size_t,int,TYPE_2__*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14 ( ThemeWidget *widget )
{
    GHashTableIter iter;
    gpointer       key, value;
    if ( widget->properties ) {
        int         index = 0;
        GList       *list = NULL;
        ThemeWidget *w    = widget;
        while ( w ) {
            if ( FUNC9 ( w->name, "Root" ) == 0 ) {
                break;
            }
            list = FUNC8 ( list, w->name );
            w    = w->parent;
        }
        if ( FUNC6 ( list ) > 0 ) {
            index = 4;
            for ( GList *iter = FUNC4 ( list ); iter != NULL; iter = FUNC7 ( iter ) ) {
                char *name = (char *) iter->data;
                FUNC1 ( name, stdout );
                if ( iter->prev == NULL && iter->next ) {
                    FUNC11 ( ' ' );
                }
                else if ( iter->next ) {
                    FUNC11 ( '.' );
                }
            }
            FUNC10 ( " {\n" );
        }
        else {
            index = 4;
            FUNC10 ( "* {\n" );
        }
        size_t property_name_length = 0;
        FUNC2 ( &iter, widget->properties );
        while ( FUNC3 ( &iter, &key, &value ) ) {
            Property *p = (Property *) value;
            property_name_length = FUNC0 ( FUNC13 ( p->name ), property_name_length );
        }
        FUNC2 ( &iter, widget->properties );
        while ( FUNC3 ( &iter, &key, &value ) ) {
            Property *p = (Property *) value;
            FUNC12 ( property_name_length, index, p );
        }
        FUNC10 ( "}\n" );
        FUNC5 ( list );
    }
    for ( unsigned int i = 0; i < widget->num_widgets; i++ ) {
        FUNC14 ( widget->widgets[i] );
    }
}