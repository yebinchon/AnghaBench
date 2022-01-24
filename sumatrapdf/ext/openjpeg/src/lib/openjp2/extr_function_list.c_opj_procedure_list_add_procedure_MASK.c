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
struct TYPE_3__ {int m_nb_max_procedures; int m_nb_procedures; int /*<<< orphan*/ * m_procedures; } ;
typedef  TYPE_1__ opj_procedure_list_t ;
typedef  int /*<<< orphan*/  opj_procedure ;
typedef  int /*<<< orphan*/  opj_event_mgr_t ;
typedef  int /*<<< orphan*/  OPJ_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  EVT_ERROR ; 
 int /*<<< orphan*/  OPJ_FALSE ; 
 int /*<<< orphan*/  OPJ_TRUE ; 
 scalar_t__ OPJ_VALIDATION_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 

OPJ_BOOL FUNC4(opj_procedure_list_t *
        p_validation_list, opj_procedure p_procedure, opj_event_mgr_t* p_manager)
{

    FUNC0(p_manager != NULL);

    if (p_validation_list->m_nb_max_procedures ==
            p_validation_list->m_nb_procedures) {
        opj_procedure * new_procedures;

        p_validation_list->m_nb_max_procedures += OPJ_VALIDATION_SIZE;
        new_procedures = (opj_procedure*)FUNC3(
                             p_validation_list->m_procedures,
                             p_validation_list->m_nb_max_procedures * sizeof(opj_procedure));
        if (! new_procedures) {
            FUNC2(p_validation_list->m_procedures);
            p_validation_list->m_nb_max_procedures = 0;
            p_validation_list->m_nb_procedures = 0;
            FUNC1(p_manager, EVT_ERROR,
                          "Not enough memory to add a new validation procedure\n");
            return OPJ_FALSE;
        } else {
            p_validation_list->m_procedures = new_procedures;
        }
    }
    p_validation_list->m_procedures[p_validation_list->m_nb_procedures] =
        p_procedure;
    ++p_validation_list->m_nb_procedures;

    return OPJ_TRUE;
}