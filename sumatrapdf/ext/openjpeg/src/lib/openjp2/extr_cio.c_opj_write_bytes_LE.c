
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPJ_UINT32 ;
typedef int OPJ_BYTE ;


 int assert (int) ;

void opj_write_bytes_LE(OPJ_BYTE * p_buffer, OPJ_UINT32 p_value,
                        OPJ_UINT32 p_nb_bytes)
{
    const OPJ_BYTE * l_data_ptr = ((const OPJ_BYTE *) &p_value) + p_nb_bytes - 1;
    OPJ_UINT32 i;

    assert(p_nb_bytes > 0 && p_nb_bytes <= sizeof(OPJ_UINT32));

    for (i = 0; i < p_nb_bytes; ++i) {
        *(p_buffer++) = *(l_data_ptr--);
    }
}
