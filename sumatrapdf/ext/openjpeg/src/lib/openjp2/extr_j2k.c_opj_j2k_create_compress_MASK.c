#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  m_header_tile_data_size; int /*<<< orphan*/ * m_header_tile_data; } ;
struct TYPE_9__ {TYPE_2__ m_encoder; } ;
struct TYPE_7__ {scalar_t__ m_is_decoder; } ;
struct TYPE_10__ {void* m_tp; void* m_procedure_list; void* m_validation_list; TYPE_3__ m_specific_param; TYPE_1__ m_cp; scalar_t__ m_is_decoder; } ;
typedef  TYPE_4__ opj_j2k_t ;
typedef  int /*<<< orphan*/  OPJ_BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  OPJ_J2K_DEFAULT_HEADER_SIZE ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 () ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 

opj_j2k_t* FUNC6(void)
{
    opj_j2k_t *l_j2k = (opj_j2k_t*) FUNC0(1, sizeof(opj_j2k_t));
    if (!l_j2k) {
        return NULL;
    }


    l_j2k->m_is_decoder = 0;
    l_j2k->m_cp.m_is_decoder = 0;

    l_j2k->m_specific_param.m_encoder.m_header_tile_data = (OPJ_BYTE *) FUNC3(
                OPJ_J2K_DEFAULT_HEADER_SIZE);
    if (! l_j2k->m_specific_param.m_encoder.m_header_tile_data) {
        FUNC1(l_j2k);
        return NULL;
    }

    l_j2k->m_specific_param.m_encoder.m_header_tile_data_size =
        OPJ_J2K_DEFAULT_HEADER_SIZE;

    /* validation list creation*/
    l_j2k->m_validation_list = FUNC4();
    if (! l_j2k->m_validation_list) {
        FUNC1(l_j2k);
        return NULL;
    }

    /* execution list creation*/
    l_j2k->m_procedure_list = FUNC4();
    if (! l_j2k->m_procedure_list) {
        FUNC1(l_j2k);
        return NULL;
    }

    l_j2k->m_tp = FUNC5(FUNC2());
    if (!l_j2k->m_tp) {
        l_j2k->m_tp = FUNC5(0);
    }
    if (!l_j2k->m_tp) {
        FUNC1(l_j2k);
        return NULL;
    }

    return l_j2k;
}