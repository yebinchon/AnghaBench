#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  extra_tags; struct TYPE_4__** ppsz_meta; } ;
typedef  TYPE_1__ vlc_meta_t ;

/* Variables and functions */
 int VLC_META_TYPE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vlc_meta_FreeExtraKey ; 

void FUNC2( vlc_meta_t *m )
{
    for( int i = 0; i < VLC_META_TYPE_COUNT ; i++ )
        FUNC0( m->ppsz_meta[i] );
    FUNC1( &m->extra_tags, vlc_meta_FreeExtraKey, NULL );
    FUNC0( m );
}