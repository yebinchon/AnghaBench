
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int tp_start_pos; int tp_end_pos; } ;
typedef TYPE_2__ opj_tp_info_t ;
typedef int opj_stream_private_t ;
typedef int opj_event_mgr_t ;
struct TYPE_8__ {int tw; int th; int* numdecompos; TYPE_1__* tile; } ;
typedef TYPE_3__ opj_codestream_info_t ;
struct TYPE_6__ {int num_tps; TYPE_2__* tp; } ;
typedef int OPJ_UINT32 ;
typedef scalar_t__ OPJ_OFF_T ;
typedef int OPJ_BYTE ;


 int JPIP_FAIX ;
 scalar_t__ get_num_max_tile_parts (TYPE_3__) ;
 int opj_stream_seek (int *,scalar_t__,int *) ;
 int opj_stream_skip (int *,int,int *) ;
 scalar_t__ opj_stream_tell (int *) ;
 int opj_stream_write_data (int *,int *,int,int *) ;
 int opj_write_bytes (int *,int,int) ;
 int pow (int,int) ;

int opj_write_tpixfaix(int coff,
                       int compno,
                       opj_codestream_info_t cstr_info,
                       int j2klen,
                       opj_stream_private_t *cio,
                       opj_event_mgr_t * p_manager)
{
    OPJ_UINT32 len;
    OPJ_OFF_T lenp;
    OPJ_UINT32 i, j;
    OPJ_UINT32 Aux;
    OPJ_UINT32 num_max_tile_parts;
    OPJ_UINT32 size_of_coding;
    opj_tp_info_t tp;
    OPJ_BYTE l_data_header [8];
    OPJ_UINT32 version;

    num_max_tile_parts = (OPJ_UINT32)get_num_max_tile_parts(cstr_info);

    if (j2klen > pow(2, 32)) {
        size_of_coding = 8;
        version = num_max_tile_parts == 1 ? 1 : 3;
    } else {
        size_of_coding = 4;
        version = num_max_tile_parts == 1 ? 0 : 2;
    }

    lenp = opj_stream_tell(cio);
    opj_stream_skip(cio, 4, p_manager);
    opj_write_bytes(l_data_header, JPIP_FAIX, 4);
    opj_stream_write_data(cio, l_data_header, 4, p_manager);
    opj_write_bytes(l_data_header, version, 1);
    opj_stream_write_data(cio, l_data_header, 1, p_manager);

    opj_write_bytes(l_data_header, num_max_tile_parts,
                    size_of_coding);
    opj_stream_write_data(cio, l_data_header, size_of_coding, p_manager);
    opj_write_bytes(l_data_header, (OPJ_UINT32)(cstr_info.tw * cstr_info.th),
                    size_of_coding);
    opj_stream_write_data(cio, l_data_header, size_of_coding, p_manager);

    for (i = 0; i < (OPJ_UINT32)(cstr_info.tw * cstr_info.th); i++) {
        for (j = 0; j < (OPJ_UINT32)cstr_info.tile[i].num_tps; j++) {
            tp = cstr_info.tile[i].tp[j];

            opj_write_bytes(l_data_header, (OPJ_UINT32)(tp.tp_start_pos - coff),
                            size_of_coding);
            opj_stream_write_data(cio, l_data_header, size_of_coding, p_manager);
            opj_write_bytes(l_data_header,
                            (OPJ_UINT32)(tp.tp_end_pos - tp.tp_start_pos + 1),
                            size_of_coding);
            opj_stream_write_data(cio, l_data_header, size_of_coding, p_manager);

            if (version & 0x02) {
                if (cstr_info.tile[i].num_tps == 1 && cstr_info.numdecompos[compno] > 1) {
                    Aux = (OPJ_UINT32)(cstr_info.numdecompos[compno] + 1);
                } else {
                    Aux = j + 1;
                }

                opj_write_bytes(l_data_header, Aux, 4);
                opj_stream_write_data(cio, l_data_header, 4, p_manager);



            }

        }

        while (j < num_max_tile_parts) {

            opj_write_bytes(l_data_header, 0,
                            size_of_coding);
            opj_stream_write_data(cio, l_data_header, size_of_coding, p_manager);
            opj_write_bytes(l_data_header, 0,
                            size_of_coding);
            opj_stream_write_data(cio, l_data_header, size_of_coding, p_manager);

            if (version & 0x02) {
                opj_write_bytes(l_data_header, 0, 4);
            }
            opj_stream_write_data(cio, l_data_header, 4, p_manager);
            j++;
        }
    }

    len = (OPJ_UINT32)(opj_stream_tell(cio) - lenp);
    opj_stream_seek(cio, lenp, p_manager);
    opj_write_bytes(l_data_header, len, 4);
    opj_stream_write_data(cio, l_data_header, 4, p_manager);
    opj_stream_seek(cio, lenp + len, p_manager);

    return (int)len;
}
