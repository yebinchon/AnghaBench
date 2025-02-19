
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ OPJ_UINT32 ;
typedef int OPJ_INT32 ;
typedef scalar_t__ OPJ_FLOAT32 ;
typedef int OPJ_BYTE ;


 int opj_read_bytes (int *,scalar_t__*,int) ;

__attribute__((used)) static void opj_j2k_read_int32_to_float(const void * p_src_data,
        void * p_dest_data, OPJ_UINT32 p_nb_elem)
{
    OPJ_BYTE * l_src_data = (OPJ_BYTE *) p_src_data;
    OPJ_FLOAT32 * l_dest_data = (OPJ_FLOAT32 *) p_dest_data;
    OPJ_UINT32 i;
    OPJ_UINT32 l_temp;

    for (i = 0; i < p_nb_elem; ++i) {
        opj_read_bytes(l_src_data, &l_temp, 4);

        l_src_data += sizeof(OPJ_INT32);

        *(l_dest_data++) = (OPJ_FLOAT32) l_temp;
    }
}
