
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t OPJ_UINT32 ;
typedef int OPJ_FLOAT64 ;


 int * opj_mct_norms_real ;

OPJ_FLOAT64 opj_mct_getnorm_real(OPJ_UINT32 compno)
{
    return opj_mct_norms_real[compno];
}
