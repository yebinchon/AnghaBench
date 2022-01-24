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
struct TYPE_3__ {int /*<<< orphan*/ * m_tp; } ;
typedef  TYPE_1__ opj_j2k_t ;
typedef  scalar_t__ OPJ_UINT32 ;
typedef  int /*<<< orphan*/  OPJ_BOOL ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  OPJ_FALSE ; 
 int /*<<< orphan*/  OPJ_TRUE ; 
 scalar_t__ FUNC0 () ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

OPJ_BOOL FUNC3(opj_j2k_t *j2k, OPJ_UINT32 num_threads)
{
    if (FUNC0()) {
        FUNC2(j2k->m_tp);
        j2k->m_tp = NULL;
        if (num_threads <= (OPJ_UINT32)INT_MAX) {
            j2k->m_tp = FUNC1((int)num_threads);
        }
        if (j2k->m_tp == NULL) {
            j2k->m_tp = FUNC1(0);
            return OPJ_FALSE;
        }
        return OPJ_TRUE;
    }
    return OPJ_FALSE;
}