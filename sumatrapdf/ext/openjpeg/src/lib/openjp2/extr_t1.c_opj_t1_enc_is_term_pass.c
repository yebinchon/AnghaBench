
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ numbps; } ;
typedef TYPE_1__ opj_tcd_cblk_enc_t ;
typedef int OPJ_UINT32 ;
typedef scalar_t__ OPJ_INT32 ;


 int J2K_CCP_CBLKSTY_LAZY ;
 int J2K_CCP_CBLKSTY_TERMALL ;
 int OPJ_FALSE ;
 int OPJ_TRUE ;

__attribute__((used)) static int opj_t1_enc_is_term_pass(opj_tcd_cblk_enc_t* cblk,
                                   OPJ_UINT32 cblksty,
                                   OPJ_INT32 bpno,
                                   OPJ_UINT32 passtype)
{

    if (passtype == 2 && bpno == 0) {
        return OPJ_TRUE;
    }

    if (cblksty & J2K_CCP_CBLKSTY_TERMALL) {
        return OPJ_TRUE;
    }

    if ((cblksty & J2K_CCP_CBLKSTY_LAZY)) {

        if ((bpno == ((OPJ_INT32)cblk->numbps - 4)) && (passtype == 2)) {
            return OPJ_TRUE;
        }


        if ((bpno < ((OPJ_INT32)(cblk->numbps) - 4)) && (passtype > 0)) {
            return OPJ_TRUE;
        }
    }

    return OPJ_FALSE;
}
