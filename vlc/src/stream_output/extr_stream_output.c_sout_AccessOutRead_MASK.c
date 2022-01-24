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
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* pf_read ) (TYPE_1__*,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ sout_access_out_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  VLC_EGENERIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 

ssize_t FUNC1( sout_access_out_t *p_access, block_t *p_buffer )
{
    return( p_access->pf_read ?
            p_access->pf_read( p_access, p_buffer ) : VLC_EGENERIC );
}