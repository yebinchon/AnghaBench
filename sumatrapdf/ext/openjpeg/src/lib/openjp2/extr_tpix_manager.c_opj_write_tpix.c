
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int opj_stream_private_t ;
typedef int opj_event_mgr_t ;
typedef int opj_codestream_info_t ;
typedef scalar_t__ OPJ_UINT32 ;
typedef int OPJ_OFF_T ;
typedef int OPJ_BYTE ;


 scalar_t__ JPIP_TPIX ;
 int opj_stream_seek (int *,scalar_t__,int *) ;
 int opj_stream_skip (int *,int,int *) ;
 int opj_stream_tell (int *) ;
 int opj_stream_write_data (int *,int *,int,int *) ;
 int opj_write_bytes (int *,scalar_t__,int) ;
 int opj_write_tpixfaix (int,int ,int ,int,int *,int *) ;

int opj_write_tpix(int coff,
                   opj_codestream_info_t cstr_info,
                   int j2klen, opj_stream_private_t *cio,
                   opj_event_mgr_t * p_manager)
{
    OPJ_BYTE l_data_header [4];
    OPJ_UINT32 len;
    OPJ_OFF_T lenp;

    lenp = opj_stream_tell(cio);
    opj_stream_skip(cio, 4, p_manager);
    opj_write_bytes(l_data_header, JPIP_TPIX, 4);
    opj_stream_write_data(cio, l_data_header, 4, p_manager);

    opj_write_tpixfaix(coff, 0, cstr_info, j2klen, cio, p_manager);

    len = (OPJ_UINT32)(opj_stream_tell(cio) - lenp);

    opj_stream_skip(cio, lenp, p_manager);
    opj_write_bytes(l_data_header, len, 4);
    opj_stream_write_data(cio, l_data_header, 4, p_manager);
    opj_stream_seek(cio, lenp + len, p_manager);

    return (int)len;
}
