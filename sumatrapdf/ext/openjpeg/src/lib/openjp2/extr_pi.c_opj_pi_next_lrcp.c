
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pw; int ph; } ;
typedef TYPE_2__ opj_pi_resolution_t ;
struct TYPE_7__ {size_t layno0; size_t layno1; size_t resno0; size_t resno1; size_t compno0; size_t compno1; int precno1; size_t precno0; } ;
struct TYPE_9__ {size_t compno; size_t resno; size_t layno; size_t precno; size_t step_l; size_t step_r; size_t step_c; size_t step_p; size_t include_size; int* include; TYPE_1__ poc; int tp_on; TYPE_4__* comps; scalar_t__ first; } ;
typedef TYPE_3__ opj_pi_iterator_t ;
struct TYPE_10__ {size_t numresolutions; TYPE_2__* resolutions; } ;
typedef TYPE_4__ opj_pi_comp_t ;
typedef size_t OPJ_UINT32 ;
typedef int OPJ_BOOL ;


 int OPJ_FALSE ;
 int OPJ_TRUE ;
 int opj_pi_emit_error (TYPE_3__*,char*) ;

__attribute__((used)) static OPJ_BOOL opj_pi_next_lrcp(opj_pi_iterator_t * pi)
{
    opj_pi_comp_t *comp = ((void*)0);
    opj_pi_resolution_t *res = ((void*)0);
    OPJ_UINT32 index = 0;

    if (!pi->first) {
        comp = &pi->comps[pi->compno];
        res = &comp->resolutions[pi->resno];
        goto LABEL_SKIP;
    } else {
        pi->first = 0;
    }

    for (pi->layno = pi->poc.layno0; pi->layno < pi->poc.layno1; pi->layno++) {
        for (pi->resno = pi->poc.resno0; pi->resno < pi->poc.resno1;
                pi->resno++) {
            for (pi->compno = pi->poc.compno0; pi->compno < pi->poc.compno1; pi->compno++) {
                comp = &pi->comps[pi->compno];
                if (pi->resno >= comp->numresolutions) {
                    continue;
                }
                res = &comp->resolutions[pi->resno];
                if (!pi->tp_on) {
                    pi->poc.precno1 = res->pw * res->ph;
                }
                for (pi->precno = pi->poc.precno0; pi->precno < pi->poc.precno1; pi->precno++) {
                    index = pi->layno * pi->step_l + pi->resno * pi->step_r + pi->compno *
                            pi->step_c + pi->precno * pi->step_p;






                    if (index >= pi->include_size) {
                        opj_pi_emit_error(pi, "Invalid access to pi->include");
                        return OPJ_FALSE;
                    }
                    if (!pi->include[index]) {
                        pi->include[index] = 1;
                        return OPJ_TRUE;
                    }
LABEL_SKIP:
                    ;
                }
            }
        }
    }

    return OPJ_FALSE;
}
