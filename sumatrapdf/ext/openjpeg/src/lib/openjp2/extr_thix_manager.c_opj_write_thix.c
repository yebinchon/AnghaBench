
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int opj_stream_private_t ;
struct TYPE_7__ {int type; scalar_t__ length; } ;
typedef TYPE_1__ opj_jp2_box_t ;
typedef int opj_event_mgr_t ;
struct TYPE_8__ {int tw; int th; } ;
typedef TYPE_2__ opj_codestream_info_t ;
typedef scalar_t__ OPJ_UINT32 ;
typedef scalar_t__ OPJ_OFF_T ;
typedef int OPJ_BYTE ;


 int JPIP_MHIX ;
 scalar_t__ JPIP_THIX ;
 scalar_t__ opj_calloc (size_t,int) ;
 int opj_free (TYPE_1__*) ;
 int opj_stream_seek (int *,scalar_t__,int *) ;
 int opj_stream_skip (int *,int,int *) ;
 scalar_t__ opj_stream_tell (int *) ;
 int opj_stream_write_data (int *,int *,int,int *) ;
 int opj_write_bytes (int *,scalar_t__,int) ;
 int opj_write_manf (int,int,TYPE_1__*,int *,int *) ;
 scalar_t__ opj_write_tilemhix (int,TYPE_2__,int,int *,int *) ;

int opj_write_thix(int coff, opj_codestream_info_t cstr_info,
                   opj_stream_private_t *cio,
                   opj_event_mgr_t * p_manager)
{
    OPJ_BYTE l_data_header [4];
    int i;
    int tileno;
    opj_jp2_box_t *box;
    OPJ_UINT32 len;
    OPJ_OFF_T lenp;

    lenp = 0;
    box = (opj_jp2_box_t *)opj_calloc((size_t)(cstr_info.tw * cstr_info.th),
                                      sizeof(opj_jp2_box_t));
    if (box == ((void*)0)) {
        return 0;
    }
    for (i = 0; i < 2 ; i++) {
        if (i) {
            opj_stream_seek(cio, lenp, p_manager);
        }

        lenp = opj_stream_tell(cio);
        opj_stream_skip(cio, 4, p_manager);
        opj_write_bytes(l_data_header, JPIP_THIX, 4);
        opj_stream_write_data(cio, l_data_header, 4, p_manager);

        opj_write_manf(i, cstr_info.tw * cstr_info.th, box, cio, p_manager);

        for (tileno = 0; tileno < cstr_info.tw * cstr_info.th; tileno++) {
            box[tileno].length = (OPJ_UINT32)opj_write_tilemhix(coff, cstr_info, tileno,
                                 cio, p_manager);
            box[tileno].type = JPIP_MHIX;
        }

        len = (OPJ_UINT32)(opj_stream_tell(cio) - lenp);
        opj_stream_seek(cio, lenp, p_manager);
        opj_write_bytes(l_data_header, len, 4);
        opj_stream_write_data(cio, l_data_header, 4, p_manager);
        opj_stream_seek(cio, lenp + len, p_manager);

    }

    opj_free(box);

    return (int)len;
}
