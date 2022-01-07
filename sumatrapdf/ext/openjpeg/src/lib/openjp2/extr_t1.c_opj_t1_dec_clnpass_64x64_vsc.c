
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_t1_t ;
typedef int OPJ_INT32 ;


 int OPJ_TRUE ;
 int opj_t1_dec_clnpass_internal (int *,int ,int ,int,int,int) ;

__attribute__((used)) static void opj_t1_dec_clnpass_64x64_vsc(
    opj_t1_t *t1,
    OPJ_INT32 bpno)
{
    opj_t1_dec_clnpass_internal(t1, bpno, OPJ_TRUE, 64, 64, 66);
}
