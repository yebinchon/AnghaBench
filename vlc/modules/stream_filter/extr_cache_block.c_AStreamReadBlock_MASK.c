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
struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ stream_t ;
struct TYPE_9__ {scalar_t__ p_chain; } ;
struct TYPE_8__ {TYPE_3__ cache; } ;
typedef  TYPE_2__ stream_sys_t ;
typedef  int ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (size_t,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ VLC_EGENERIC ; 
 int FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,void*,size_t) ; 

__attribute__((used)) static ssize_t FUNC4(stream_t *s, void *buf, size_t len)
{
    stream_sys_t *sys = s->p_sys;

    ssize_t i_current = FUNC2( &sys->cache );
    size_t i_copy = FUNC1((size_t)i_current, 0, len);

    /**
     * we should not signal end-of-file if we have not exhausted
     * the cache. i_copy == 0 just means that the cache currently does
     * not contain data at the offset that we want, not EOF.
     **/
    if( i_copy == 0 )
    {
        /* Return EOF if we are unable to refill cache, most likely
         * really EOF */
        if( FUNC0(s) == VLC_EGENERIC )
            return 0;
    }

    /* Copy data */
    if( FUNC3( &sys->cache, buf, i_copy ) )
        return -1;


    /* If we ended up on refill, try to read refilled cache */
    if( i_copy == 0 && sys->cache.p_chain )
        return FUNC4( s, buf, len );

    return i_copy;
}