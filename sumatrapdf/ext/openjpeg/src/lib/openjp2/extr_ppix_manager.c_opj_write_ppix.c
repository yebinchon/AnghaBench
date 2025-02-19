
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int opj_stream_private_t ;
struct TYPE_7__ {int length; int type; } ;
typedef TYPE_1__ opj_jp2_box_t ;
typedef int opj_event_mgr_t ;
struct TYPE_8__ {int numcomps; } ;
typedef TYPE_2__ opj_codestream_info_t ;
typedef int OPJ_UINT32 ;
typedef int OPJ_OFF_T ;
typedef int OPJ_BYTE ;
typedef int OPJ_BOOL ;


 int JPIP_FAIX ;
 int JPIP_PPIX ;
 scalar_t__ opj_calloc (size_t,int) ;
 int opj_free (TYPE_1__*) ;
 int opj_stream_seek (int *,int,int *) ;
 int opj_stream_skip (int *,int,int *) ;
 int opj_stream_tell (int *) ;
 int opj_stream_write_data (int *,int *,int,int *) ;
 int opj_write_bytes (int *,int,int) ;
 int opj_write_manf (int,int,TYPE_1__*,int *,int *) ;
 scalar_t__ opj_write_ppixfaix (int,int,TYPE_2__,int ,int,int *,int *) ;

int opj_write_ppix(int coff, opj_codestream_info_t cstr_info, OPJ_BOOL EPHused,
                   int j2klen, opj_stream_private_t *cio,
                   opj_event_mgr_t * p_manager)
{
    OPJ_BYTE l_data_header [4];
    int compno, i;
    opj_jp2_box_t *box;
    OPJ_OFF_T lenp;
    OPJ_UINT32 len;



    lenp = -1;
    box = (opj_jp2_box_t *)opj_calloc((size_t)cstr_info.numcomps,
                                      sizeof(opj_jp2_box_t));
    if (box == ((void*)0)) {
        return 0;
    }
    for (i = 0; i < 2; i++) {
        if (i)

        {
            opj_stream_seek(cio, lenp, p_manager);
        }

        lenp = (OPJ_UINT32)(opj_stream_tell(cio));
        opj_stream_skip(cio, 4, p_manager);
        opj_write_bytes(l_data_header, JPIP_PPIX, 4);
        opj_stream_write_data(cio, l_data_header, 4, p_manager);

        opj_write_manf(i, cstr_info.numcomps, box, cio, p_manager);

        for (compno = 0; compno < cstr_info.numcomps; compno++) {
            box[compno].length = (OPJ_UINT32)opj_write_ppixfaix(coff, compno, cstr_info,
                                 EPHused, j2klen, cio, p_manager);
            box[compno].type = JPIP_FAIX;
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
