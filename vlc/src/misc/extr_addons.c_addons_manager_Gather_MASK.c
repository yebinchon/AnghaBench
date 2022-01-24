#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* p_priv; } ;
typedef  TYPE_3__ addons_manager_t ;
struct TYPE_6__ {int b_live; int /*<<< orphan*/  waitcond; int /*<<< orphan*/  lock; int /*<<< orphan*/  thread; int /*<<< orphan*/  uris; } ;
struct TYPE_7__ {TYPE_1__ finder; int /*<<< orphan*/  p_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FinderThread ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7( addons_manager_t *p_manager, const char *psz_uri )
{
    if ( !psz_uri )
        return;

    FUNC5( &p_manager->p_priv->finder.lock );

    FUNC0( p_manager->p_priv->finder.uris, FUNC2( psz_uri ) );

    if( !p_manager->p_priv->finder.b_live )
    {
        if( FUNC3( &p_manager->p_priv->finder.thread, FinderThread, p_manager,
                       VLC_THREAD_PRIORITY_LOW ) )
        {
            FUNC1( p_manager->p_priv->p_parent,
                     "cannot spawn entries provider thread" );
            FUNC6( &p_manager->p_priv->finder.lock );
            return;
        }
        p_manager->p_priv->finder.b_live = true;
    }

    FUNC6( &p_manager->p_priv->finder.lock );
    FUNC4( &p_manager->p_priv->finder.waitcond );
}