
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_stream_private_t ;
typedef int opj_event_mgr_t ;
typedef scalar_t__ OPJ_UINT32 ;
typedef scalar_t__ OPJ_OFF_T ;
typedef int OPJ_BYTE ;


 scalar_t__ JPIP_CPTR ;
 int opj_stream_seek (int *,scalar_t__,int *) ;
 int opj_stream_skip (int *,int,int *) ;
 scalar_t__ opj_stream_tell (int *) ;
 int opj_stream_write_data (int *,int *,int,int *) ;
 int opj_write_bytes (int *,scalar_t__,int) ;

void opj_write_cptr(int coff, int clen, opj_stream_private_t *cio,
                    opj_event_mgr_t * p_manager)
{
    OPJ_BYTE l_data_header [3 * 8];
    OPJ_UINT32 len;
    OPJ_OFF_T lenp;


    lenp = opj_stream_tell(cio);
    opj_stream_skip(cio, 4, p_manager);
    opj_write_bytes(l_data_header, JPIP_CPTR, 4);
    opj_write_bytes(l_data_header + 4, 0, 2);
    opj_write_bytes(l_data_header + 6, 0, 2);
    opj_write_bytes(l_data_header + 8, (OPJ_UINT32)coff,
                    8);
    opj_write_bytes(l_data_header + 16, (OPJ_UINT32)clen,
                    8);
    opj_stream_write_data(cio, l_data_header, 3 * 8, p_manager);

    len = (OPJ_UINT32)(opj_stream_tell(cio) - lenp);
    opj_stream_seek(cio, lenp, p_manager);
    opj_write_bytes(l_data_header, len, 4);
    opj_stream_write_data(cio, l_data_header, 4, p_manager);
    opj_stream_seek(cio, lenp + len, p_manager);

}
