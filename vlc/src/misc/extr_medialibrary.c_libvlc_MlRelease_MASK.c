#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  p_module; } ;
struct TYPE_5__ {TYPE_2__ m; int /*<<< orphan*/  lock; int /*<<< orphan*/  cbs; } ;
typedef  TYPE_1__ vlc_medialibrary_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

void FUNC5( vlc_medialibrary_t* p_ml )
{
    FUNC0( p_ml != NULL );
    FUNC1( &p_ml->m, p_ml->m.p_module );
    FUNC0( FUNC2( &p_ml->cbs ) );
    FUNC3( &p_ml->lock );
    FUNC4(&p_ml->m);
}