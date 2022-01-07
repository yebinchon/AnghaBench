
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OPJ_UINT32 ;
typedef int OPJ_BYTE ;


 int assert (int) ;
 int memcpy (int *,int const*,scalar_t__) ;

void opj_read_bytes_BE(const OPJ_BYTE * p_buffer, OPJ_UINT32 * p_value,
                       OPJ_UINT32 p_nb_bytes)
{
    OPJ_BYTE * l_data_ptr = ((OPJ_BYTE *) p_value);

    assert(p_nb_bytes > 0 && p_nb_bytes <= sizeof(OPJ_UINT32));

    *p_value = 0;
    memcpy(l_data_ptr + sizeof(OPJ_UINT32) - p_nb_bytes, p_buffer, p_nb_bytes);
}
