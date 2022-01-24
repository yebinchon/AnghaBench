#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  module_t ;
typedef  int /*<<< orphan*/  libvlc_instance_t ;
struct TYPE_6__ {struct TYPE_6__* p_next; struct TYPE_6__* psz_description; struct TYPE_6__* psz_name; } ;
typedef  TYPE_1__ libvlc_audio_output_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ ** FUNC8 (size_t*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

libvlc_audio_output_t *
        FUNC12( libvlc_instance_t *p_instance )
{
    size_t count;
    module_t **module_list = FUNC8( &count );
    libvlc_audio_output_t *list = NULL;

    for (size_t i = 0; i < count; i++)
    {
        module_t *module = module_list[i];

        if( !FUNC9( module, "audio output" ) )
            continue;

        libvlc_audio_output_t *item = FUNC4( sizeof( *item ) );
        if( FUNC11(item == NULL) )
        {
    error:
            FUNC3( "Not enough memory" );
            FUNC2( list );
            list = NULL;
            break;
        }

        item->psz_name = FUNC10( FUNC6( module ) );
        item->psz_description = FUNC10( FUNC5( module, true ) );
        if( FUNC11(item->psz_name == NULL || item->psz_description == NULL) )
        {
            FUNC1( item->psz_name );
            FUNC1( item->psz_description );
            FUNC1( item );
            goto error;
        }
        item->p_next = list;
        list = item;
    }
    FUNC7( module_list );

    FUNC0( p_instance );
    return list;
}