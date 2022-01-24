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
struct TYPE_3__ {int /*<<< orphan*/ * p_archive; int /*<<< orphan*/ * p_entry; } ;
typedef  TYPE_1__ private_sys_t ;
typedef  int /*<<< orphan*/  libarchive_t ;

/* Variables and functions */
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2( private_sys_t* p_sys )
{
    libarchive_t* p_arc = p_sys->p_archive;

    if( p_sys->p_entry )
        FUNC0( p_sys->p_entry );

    if( p_arc )
        FUNC1( p_arc );

    p_sys->p_entry   = NULL;
    p_sys->p_archive = NULL;

    return VLC_SUCCESS;
}