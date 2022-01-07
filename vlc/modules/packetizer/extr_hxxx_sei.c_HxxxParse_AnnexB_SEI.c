
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int pf_hxxx_sei_callback ;


 int HxxxParseSEI (int const*,size_t,int ,int ,void*) ;
 scalar_t__ hxxx_strip_AnnexB_startcode (int const**,size_t*) ;

void HxxxParse_AnnexB_SEI(const uint8_t *p_buf, size_t i_buf,
                          uint8_t i_header, pf_hxxx_sei_callback cb, void *cbdata)
{
    if( hxxx_strip_AnnexB_startcode( &p_buf, &i_buf ) )
        HxxxParseSEI(p_buf, i_buf, i_header, cb, cbdata);
}
