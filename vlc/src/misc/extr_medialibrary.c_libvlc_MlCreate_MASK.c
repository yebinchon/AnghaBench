#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * p_module; int /*<<< orphan*/ * cbs; } ;
struct TYPE_6__ {TYPE_2__ m; int /*<<< orphan*/  lock; int /*<<< orphan*/  cbs; } ;
typedef  TYPE_1__ vlc_medialibrary_t ;
typedef  int /*<<< orphan*/  libvlc_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  callbacks ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

vlc_medialibrary_t* FUNC8( libvlc_int_t* p_libvlc  )
{
    vlc_medialibrary_t *p_ml = FUNC3( FUNC0( p_libvlc ),
                                                  sizeof( *p_ml ), "medialibrary" );
    if ( FUNC2( p_ml == NULL ) )
        return NULL;
    FUNC6( &p_ml->lock );
    FUNC4( &p_ml->cbs );
    p_ml->m.cbs = &callbacks;
    p_ml->m.p_module = FUNC1( &p_ml->m, "medialibrary", NULL, false );
    if ( p_ml->m.p_module == NULL )
    {
        FUNC5( &p_ml->lock );
        FUNC7(&p_ml->m);
        return NULL;
    }
    return p_ml;
}