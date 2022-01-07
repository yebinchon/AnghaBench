
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int prg; } ;
struct TYPE_10__ {TYPE_1__ poc; } ;
typedef TYPE_2__ opj_pi_iterator_t ;
typedef int OPJ_BOOL ;



 int OPJ_FALSE ;





 int opj_pi_next_cprl (TYPE_2__*) ;
 int opj_pi_next_lrcp (TYPE_2__*) ;
 int opj_pi_next_pcrl (TYPE_2__*) ;
 int opj_pi_next_rlcp (TYPE_2__*) ;
 int opj_pi_next_rpcl (TYPE_2__*) ;

OPJ_BOOL opj_pi_next(opj_pi_iterator_t * pi)
{
    switch (pi->poc.prg) {
    case 132:
        return opj_pi_next_lrcp(pi);
    case 129:
        return opj_pi_next_rlcp(pi);
    case 128:
        return opj_pi_next_rpcl(pi);
    case 131:
        return opj_pi_next_pcrl(pi);
    case 133:
        return opj_pi_next_cprl(pi);
    case 130:
        return OPJ_FALSE;
    }

    return OPJ_FALSE;
}
