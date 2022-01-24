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
struct TYPE_3__ {int /*<<< orphan*/  extra_tags; scalar_t__ i_status; int /*<<< orphan*/  ppsz_meta; } ;
typedef  TYPE_1__ vlc_meta_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

vlc_meta_t *FUNC3( void )
{
    vlc_meta_t *m = (vlc_meta_t*)FUNC0( sizeof(*m) );
    if( !m )
        return NULL;
    FUNC1( m->ppsz_meta, 0, sizeof(m->ppsz_meta) );
    m->i_status = 0;
    FUNC2( &m->extra_tags, 0 );
    return m;
}