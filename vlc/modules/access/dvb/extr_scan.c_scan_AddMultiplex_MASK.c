#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int i_multiplex; int /*<<< orphan*/  i_multiplex_toscan; TYPE_2__** pp_multiplex; } ;
typedef  TYPE_1__ scan_t ;
struct TYPE_8__ {int /*<<< orphan*/  b_scanned; } ;
typedef  TYPE_2__ scan_multiplex_t ;

/* Variables and functions */
 TYPE_2__** FUNC0 (TYPE_2__**,int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static bool FUNC2( scan_t *p_scan, scan_multiplex_t *p_mplex )
{
    scan_multiplex_t **pp_realloc = FUNC0( p_scan->pp_multiplex,
                                             sizeof(scan_multiplex_t *) * (p_scan->i_multiplex + 1) );
    if( FUNC1(!pp_realloc) )
        return false;
    pp_realloc[p_scan->i_multiplex] = p_mplex;
    p_scan->pp_multiplex = pp_realloc;
    p_scan->i_multiplex++;
    if( !p_mplex->b_scanned )
        p_scan->i_multiplex_toscan++;
    return true;
}