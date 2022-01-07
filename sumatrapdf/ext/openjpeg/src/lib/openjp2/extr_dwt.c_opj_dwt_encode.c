
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_tcd_tilecomp_t ;
typedef int OPJ_BOOL ;


 int opj_dwt_encode_1 ;
 int opj_dwt_encode_procedure (int *,int ) ;

OPJ_BOOL opj_dwt_encode(opj_tcd_tilecomp_t * tilec)
{
    return opj_dwt_encode_procedure(tilec, opj_dwt_encode_1);
}
