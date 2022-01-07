
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_UINT32 ;
typedef int OPJ_FLOAT32 ;
typedef int OPJ_BYTE ;



void opj_write_float_LE(OPJ_BYTE * p_buffer, OPJ_FLOAT32 p_value)
{
    const OPJ_BYTE * l_data_ptr = ((const OPJ_BYTE *) &p_value) + sizeof(
                                      OPJ_FLOAT32) - 1;
    OPJ_UINT32 i;
    for (i = 0; i < sizeof(OPJ_FLOAT32); ++i) {
        *(p_buffer++) = *(l_data_ptr--);
    }
}
