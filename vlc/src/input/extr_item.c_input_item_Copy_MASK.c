#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_meta_t ;
struct TYPE_8__ {int b_net; scalar_t__ i_slaves; int /*<<< orphan*/ * p_meta; int /*<<< orphan*/  lock; TYPE_7__** pp_slaves; int /*<<< orphan*/  i_type; int /*<<< orphan*/  i_duration; int /*<<< orphan*/  psz_name; int /*<<< orphan*/  psz_uri; } ;
typedef  TYPE_1__ input_item_t ;
typedef  int /*<<< orphan*/  input_item_slave_t ;
struct TYPE_9__ {int /*<<< orphan*/  i_priority; int /*<<< orphan*/  i_type; int /*<<< orphan*/  psz_uri; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITEM_NET_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_7__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

input_item_t *FUNC10( input_item_t *p_input )
{
    vlc_meta_t *meta = NULL;
    input_item_t *item;
    bool b_net;

    FUNC8( &p_input->lock );

    item = FUNC2( p_input->psz_uri, p_input->psz_name,
                              p_input->i_duration, p_input->i_type,
                              ITEM_NET_UNKNOWN );
    if( FUNC4(item != NULL) && p_input->p_meta != NULL )
    {
        meta = FUNC7();
        FUNC6( meta, p_input->p_meta );
    }
    b_net = p_input->b_net;

    if( FUNC4(item != NULL) && p_input->i_slaves > 0 )
    {
        for( int i = 0; i < p_input->i_slaves; i++ )
        {
            input_item_slave_t* slave = FUNC3(
                        p_input->pp_slaves[i]->psz_uri,
                        p_input->pp_slaves[i]->i_type,
                        p_input->pp_slaves[i]->i_priority);
            if( FUNC5(slave != NULL) )
            {
                FUNC0(item->i_slaves, item->pp_slaves, slave);
            }
        }
    }

    FUNC9( &p_input->lock );

    if( FUNC4(item != NULL) )
    {   /* No need to lock; no other thread has seen this new item yet. */
        FUNC1( item, p_input );
        item->p_meta = meta;
        item->b_net = b_net;
    }

    return item;
}