#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vlc_ml_event_callback_t {int /*<<< orphan*/  node; void* p_data; int /*<<< orphan*/  pf_cb; } ;
typedef  struct vlc_ml_event_callback_t vlc_ml_event_callback_t ;
typedef  int /*<<< orphan*/  vlc_ml_callback_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  cbs; } ;
typedef  TYPE_1__ vlc_medialibrary_t ;

/* Variables and functions */
 struct vlc_ml_event_callback_t* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

vlc_ml_event_callback_t*
FUNC5( vlc_medialibrary_t* p_ml, vlc_ml_callback_t cb,
                                void* p_data )
{
    struct vlc_ml_event_callback_t* p_cb = FUNC0( sizeof( *p_cb ) );
    if ( FUNC1( p_cb == NULL ) )
        return NULL;
    p_cb->pf_cb = cb;
    p_cb->p_data = p_data;
    FUNC3( &p_ml->lock );
    FUNC2( &p_cb->node, &p_ml->cbs );
    FUNC4( &p_ml->lock );
    return p_cb;
}