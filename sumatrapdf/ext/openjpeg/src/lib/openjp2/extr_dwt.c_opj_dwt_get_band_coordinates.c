
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ numresolutions; } ;
typedef TYPE_1__ opj_tcd_tilecomp_t ;
typedef scalar_t__ OPJ_UINT32 ;


 scalar_t__ opj_uint_ceildivpow2 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void opj_dwt_get_band_coordinates(opj_tcd_tilecomp_t* tilec,
        OPJ_UINT32 resno,
        OPJ_UINT32 bandno,
        OPJ_UINT32 tcx0,
        OPJ_UINT32 tcy0,
        OPJ_UINT32 tcx1,
        OPJ_UINT32 tcy1,
        OPJ_UINT32* tbx0,
        OPJ_UINT32* tby0,
        OPJ_UINT32* tbx1,
        OPJ_UINT32* tby1)
{

    OPJ_UINT32 nb = (resno == 0) ?
                    tilec->numresolutions - 1 :
                    tilec->numresolutions - resno;


    OPJ_UINT32 x0b = bandno & 1;
    OPJ_UINT32 y0b = bandno >> 1;
    if (tbx0) {
        *tbx0 = (nb == 0) ? tcx0 :
                (tcx0 <= (1U << (nb - 1)) * x0b) ? 0 :
                opj_uint_ceildivpow2(tcx0 - (1U << (nb - 1)) * x0b, nb);
    }
    if (tby0) {
        *tby0 = (nb == 0) ? tcy0 :
                (tcy0 <= (1U << (nb - 1)) * y0b) ? 0 :
                opj_uint_ceildivpow2(tcy0 - (1U << (nb - 1)) * y0b, nb);
    }
    if (tbx1) {
        *tbx1 = (nb == 0) ? tcx1 :
                (tcx1 <= (1U << (nb - 1)) * x0b) ? 0 :
                opj_uint_ceildivpow2(tcx1 - (1U << (nb - 1)) * x0b, nb);
    }
    if (tby1) {
        *tby1 = (nb == 0) ? tcy1 :
                (tcy1 <= (1U << (nb - 1)) * y0b) ? 0 :
                opj_uint_ceildivpow2(tcy1 - (1U << (nb - 1)) * y0b, nb);
    }
}
