
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_FLOAT64 ;
typedef int OPJ_BYTE ;


 int memcpy (int *,int const*,int) ;

void opj_write_double_BE(OPJ_BYTE * p_buffer, OPJ_FLOAT64 p_value)
{
    const OPJ_BYTE * l_data_ptr = ((const OPJ_BYTE *) &p_value);
    memcpy(p_buffer, l_data_ptr, sizeof(OPJ_FLOAT64));
}
