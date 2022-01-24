#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* psz_desc; TYPE_2__* psz_url; } ;
struct TYPE_8__ {struct TYPE_8__* p_pkey; TYPE_1__ release; int /*<<< orphan*/  lock; TYPE_3__* p_download; struct TYPE_8__* p_check; int /*<<< orphan*/  thread; } ;
typedef  TYPE_2__ update_t ;
struct TYPE_9__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  aborted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

void FUNC6( update_t *p_update )
{
    FUNC0( p_update );

    if( p_update->p_check )
    {
        FUNC3( p_update->p_check->thread, NULL );
        FUNC2( p_update->p_check );
    }

    if( p_update->p_download )
    {
        FUNC1( &p_update->p_download->aborted, true );
        FUNC3( p_update->p_download->thread, NULL );
        FUNC5(p_update->p_download);
    }

    FUNC4( &p_update->lock );

    FUNC2( p_update->release.psz_url );
    FUNC2( p_update->release.psz_desc );
    FUNC2( p_update->p_pkey );

    FUNC2( p_update );
}