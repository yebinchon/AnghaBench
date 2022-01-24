#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  dvbpsi_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATSC_NewTable_Callback ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2( dvbpsi_t *p_handle, void *p_cb_pid )
{
    if( !FUNC1( p_handle ) )
        return FUNC0( p_handle, ATSC_NewTable_Callback, p_cb_pid );
    return true;
}