#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* p_extraes; struct TYPE_5__* p_next; } ;
typedef  TYPE_1__ ts_es_t ;
typedef  int /*<<< orphan*/  demux_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void FUNC2( demux_t *p_demux, ts_es_t *p_es )
{
    while( p_es )
    {
        ts_es_t *p_next = p_es->p_next;
        FUNC2( p_demux, p_es->p_extraes );
        FUNC1( p_demux, p_es );
        FUNC0( p_es );
        p_es = p_next;
    }
}