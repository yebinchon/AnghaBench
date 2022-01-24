#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int i_options; int i_es; int i_epg; int i_categories; int i_slaves; int /*<<< orphan*/  lock; TYPE_2__** pp_slaves; TYPE_2__** pp_categories; TYPE_2__** pp_epg; TYPE_2__** es; TYPE_2__* optflagv; TYPE_2__** ppsz_options; TYPE_2__* opaques; int /*<<< orphan*/ * p_meta; TYPE_2__* p_stats; TYPE_2__* psz_uri; TYPE_2__* psz_name; int /*<<< orphan*/  event_manager; } ;
typedef  TYPE_1__ input_item_t ;
struct TYPE_14__ {struct TYPE_14__* next; int /*<<< orphan*/  rc; } ;
typedef  TYPE_2__ input_item_owner_t ;
typedef  TYPE_2__ input_item_opaque_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11( input_item_t *p_item )
{
    input_item_owner_t *owner = FUNC5(p_item);

    if( !FUNC6( &owner->rc ) )
        return;

    FUNC8( &p_item->event_manager );

    FUNC2( p_item->psz_name );
    FUNC2( p_item->psz_uri );
    FUNC2( p_item->p_stats );

    if( p_item->p_meta != NULL )
        FUNC9( p_item->p_meta );

    for( input_item_opaque_t *o = p_item->opaques, *next; o != NULL; o = next )
    {
        next = o->next;
        FUNC2( o );
    }

    for( int i = 0; i < p_item->i_options; i++ )
        FUNC2( p_item->ppsz_options[i] );
    FUNC0( p_item->i_options, p_item->ppsz_options );
    FUNC2( p_item->optflagv );

    for( int i = 0; i < p_item->i_es; i++ )
    {
        FUNC1( p_item->es[i] );
        FUNC2( p_item->es[i] );
    }
    FUNC0( p_item->i_es, p_item->es );

    for( int i = 0; i < p_item->i_epg; i++ )
        FUNC7( p_item->pp_epg[i] );
    FUNC0( p_item->i_epg, p_item->pp_epg );

    for( int i = 0; i < p_item->i_categories; i++ )
        FUNC3( p_item->pp_categories[i] );
    FUNC0( p_item->i_categories, p_item->pp_categories );

    for( int i = 0; i < p_item->i_slaves; i++ )
        FUNC4( p_item->pp_slaves[i] );
    FUNC0( p_item->i_slaves, p_item->pp_slaves );

    FUNC10( &p_item->lock );
    FUNC2( owner );
}