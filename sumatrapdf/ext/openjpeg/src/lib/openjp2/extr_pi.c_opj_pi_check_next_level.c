
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* pocs; } ;
typedef TYPE_1__ opj_tcp_t ;
struct TYPE_6__ {int tyE; int ty0_t; int txE; int tx0_t; int prcE; int prc_t; int prg; int layE; int lay_t; int compE; int comp_t; int resE; int res_t; } ;
typedef TYPE_2__ opj_poc_t ;
struct TYPE_7__ {TYPE_1__* tcps; } ;
typedef TYPE_3__ opj_cp_t ;
typedef size_t OPJ_UINT32 ;
typedef scalar_t__ OPJ_INT32 ;
typedef int OPJ_CHAR ;
typedef void* OPJ_BOOL ;


 void* OPJ_FALSE ;


 void* OPJ_TRUE ;

__attribute__((used)) static OPJ_BOOL opj_pi_check_next_level(OPJ_INT32 pos,
                                        opj_cp_t *cp,
                                        OPJ_UINT32 tileno,
                                        OPJ_UINT32 pino,
                                        const OPJ_CHAR *prog)
{
    OPJ_INT32 i;
    opj_tcp_t *tcps = &cp->tcps[tileno];
    opj_poc_t *tcp = &tcps->pocs[pino];

    if (pos >= 0) {
        for (i = pos; pos >= 0; i--) {
            switch (prog[i]) {
            case 'R':
                if (tcp->res_t == tcp->resE) {
                    if (opj_pi_check_next_level(pos - 1, cp, tileno, pino, prog)) {
                        return OPJ_TRUE;
                    } else {
                        return OPJ_FALSE;
                    }
                } else {
                    return OPJ_TRUE;
                }
                break;
            case 'C':
                if (tcp->comp_t == tcp->compE) {
                    if (opj_pi_check_next_level(pos - 1, cp, tileno, pino, prog)) {
                        return OPJ_TRUE;
                    } else {
                        return OPJ_FALSE;
                    }
                } else {
                    return OPJ_TRUE;
                }
                break;
            case 'L':
                if (tcp->lay_t == tcp->layE) {
                    if (opj_pi_check_next_level(pos - 1, cp, tileno, pino, prog)) {
                        return OPJ_TRUE;
                    } else {
                        return OPJ_FALSE;
                    }
                } else {
                    return OPJ_TRUE;
                }
                break;
            case 'P':
                switch (tcp->prg) {
                case 129:
                case 128:
                    if (tcp->prc_t == tcp->prcE) {
                        if (opj_pi_check_next_level(i - 1, cp, tileno, pino, prog)) {
                            return OPJ_TRUE;
                        } else {
                            return OPJ_FALSE;
                        }
                    } else {
                        return OPJ_TRUE;
                    }
                    break;
                default:
                    if (tcp->tx0_t == tcp->txE) {

                        if (tcp->ty0_t == tcp->tyE) {
                            if (opj_pi_check_next_level(i - 1, cp, tileno, pino, prog)) {
                                return OPJ_TRUE;
                            } else {
                                return OPJ_FALSE;
                            }
                        } else {
                            return OPJ_TRUE;
                        }
                    } else {
                        return OPJ_TRUE;
                    }
                    break;
                }
            }
        }
    }
    return OPJ_FALSE;
}
