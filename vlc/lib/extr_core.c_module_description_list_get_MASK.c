#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_4__ {struct TYPE_4__* p_next; int /*<<< orphan*/ * psz_help; int /*<<< orphan*/ * psz_longname; int /*<<< orphan*/ * psz_shortname; int /*<<< orphan*/ * psz_name; } ;
typedef  TYPE_1__ libvlc_module_description_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC8 (size_t*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC10 (char const*) ; 

__attribute__((used)) static libvlc_module_description_t *FUNC11(
                libvlc_instance_t *p_instance, const char *capability )
{
    libvlc_module_description_t *p_list = NULL,
                          *p_actual = NULL,
                          *p_previous = NULL;
    size_t count;
    module_t **module_list = FUNC8( &count );

    for (size_t i = 0; i < count; i++)
    {
        module_t *p_module = module_list[i];

        if ( !FUNC9( p_module, capability ) )
            continue;

        p_actual = ( libvlc_module_description_t * ) FUNC3( sizeof( libvlc_module_description_t ) );
        if ( p_actual == NULL )
        {
            FUNC2( "Not enough memory" );
            FUNC1( p_list );
            FUNC7( module_list );
            return NULL;
        }

        if ( p_list == NULL )
            p_list = p_actual;

        const char* name = FUNC6( p_module );
        const char* shortname = FUNC5( p_module, false );
        const char* longname = FUNC5( p_module, true );
        const char* help = FUNC4( p_module );
        p_actual->psz_name = name ? FUNC10( name ) : NULL;
        p_actual->psz_shortname = shortname ? FUNC10( shortname ) : NULL;
        p_actual->psz_longname = longname ? FUNC10( longname ) : NULL;
        p_actual->psz_help = help ? FUNC10( help ) : NULL;

        p_actual->p_next = NULL;
        if ( p_previous )
            p_previous->p_next = p_actual;
        p_previous = p_actual;
    }

    FUNC7( module_list );
    FUNC0( p_instance );
    return p_list;
}