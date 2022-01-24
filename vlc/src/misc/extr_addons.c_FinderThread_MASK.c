#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_15__ ;
typedef  struct TYPE_17__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  module_t ;
struct TYPE_20__ {int /*<<< orphan*/  (* discovery_ended ) (TYPE_5__*) ;} ;
struct TYPE_23__ {TYPE_4__* p_priv; TYPE_2__ owner; } ;
typedef  TYPE_5__ addons_manager_t ;
struct TYPE_17__ {int /*<<< orphan*/  i_size; int /*<<< orphan*/  p_elems; } ;
struct TYPE_19__ {int no_interact; } ;
struct TYPE_24__ {char* psz_uri; TYPE_14__ entries; int /*<<< orphan*/  (* pf_find ) (TYPE_6__*) ;TYPE_1__ obj; } ;
typedef  TYPE_6__ addons_finder_t ;
struct TYPE_18__ {scalar_t__ i_size; char** p_elems; } ;
struct TYPE_21__ {int /*<<< orphan*/  lock; TYPE_15__ uris; scalar_t__ b_live; int /*<<< orphan*/  waitcond; int /*<<< orphan*/  p_interrupt; } ;
struct TYPE_22__ {TYPE_3__ finder; int /*<<< orphan*/  p_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_14__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_15__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_14__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  finder_thread_interrupted ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_6__*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC10 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int FUNC18 () ; 

__attribute__((used)) static void *FUNC19( void *p_data )
{
    addons_manager_t *p_manager = p_data;
    int i_cancel = FUNC18();
    FUNC12( p_manager->p_priv->finder.p_interrupt );

    FUNC14( &p_manager->p_priv->finder.lock );
    while( p_manager->p_priv->finder.b_live )
    {
        char *psz_uri;

        FUNC11( finder_thread_interrupted, p_data );
        while( p_manager->p_priv->finder.uris.i_size == 0 &&
               p_manager->p_priv->finder.b_live )
        {
            FUNC9( &p_manager->p_priv->finder.waitcond,
                           &p_manager->p_priv->finder.lock );
        }
        FUNC13();
        if( !p_manager->p_priv->finder.b_live )
            break;
        psz_uri = p_manager->p_priv->finder.uris.p_elems[0];
        FUNC1( p_manager->p_priv->finder.uris, 0 );

        FUNC15( &p_manager->p_priv->finder.lock );

        addons_finder_t *p_finder =
                FUNC10( p_manager->p_priv->p_parent, sizeof( *p_finder ), "entries finder" );

        if( p_finder != NULL )
        {
            p_finder->obj.no_interact = true;
            module_t *p_module;
            FUNC0( p_finder->entries );
            p_finder->psz_uri = psz_uri;

            p_module = FUNC5( p_finder, "addons finder", NULL, false );
            if( p_module )
            {
                p_finder->pf_find( p_finder );
                FUNC6( p_finder, p_module );
                FUNC3( p_manager, p_finder->entries.p_elems, p_finder->entries.i_size );
            }
            FUNC2( p_finder->entries );
            FUNC4( psz_uri );
            FUNC16(p_finder);
        }

        p_manager->owner.discovery_ended( p_manager );
        FUNC14( &p_manager->p_priv->finder.lock );
    }

    FUNC15( &p_manager->p_priv->finder.lock );
    FUNC17( i_cancel );
    return NULL;
}