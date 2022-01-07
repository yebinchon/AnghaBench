
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int m_reduce; int m_layer; } ;
struct TYPE_9__ {TYPE_1__ m_dec; } ;
struct TYPE_10__ {int max_tiles; int exp_comps; int correct; TYPE_2__ m_specific_param; } ;
struct TYPE_11__ {int dump_state; TYPE_3__ m_cp; } ;
typedef TYPE_4__ opj_j2k_t ;
struct TYPE_12__ {int flags; int jpwl_max_tiles; int jpwl_exp_comps; int jpwl_correct; int cp_reduce; int cp_layer; } ;
typedef TYPE_5__ opj_dparameters_t ;


 int OPJ_DPARAMETERS_DUMP_FLAG ;

void opj_j2k_setup_decoder(opj_j2k_t *j2k, opj_dparameters_t *parameters)
{
    if (j2k && parameters) {
        j2k->m_cp.m_specific_param.m_dec.m_layer = parameters->cp_layer;
        j2k->m_cp.m_specific_param.m_dec.m_reduce = parameters->cp_reduce;

        j2k->dump_state = (parameters->flags & OPJ_DPARAMETERS_DUMP_FLAG);





    }
}
