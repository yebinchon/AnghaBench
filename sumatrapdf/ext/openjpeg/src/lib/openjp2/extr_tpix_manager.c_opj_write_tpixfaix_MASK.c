#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int tp_start_pos; int tp_end_pos; } ;
typedef  TYPE_2__ opj_tp_info_t ;
typedef  int /*<<< orphan*/  opj_stream_private_t ;
typedef  int /*<<< orphan*/  opj_event_mgr_t ;
struct TYPE_8__ {int tw; int th; int* numdecompos; TYPE_1__* tile; } ;
typedef  TYPE_3__ opj_codestream_info_t ;
struct TYPE_6__ {int num_tps; TYPE_2__* tp; } ;
typedef  int OPJ_UINT32 ;
typedef  scalar_t__ OPJ_OFF_T ;
typedef  int /*<<< orphan*/  OPJ_BYTE ;

/* Variables and functions */
 int JPIP_FAIX ; 
 scalar_t__ FUNC0 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int,int) ; 

int FUNC7(int coff,
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
    OPJ_UINT32 size_of_coding; /* 4 or 8 */
    opj_tp_info_t tp;
    OPJ_BYTE l_data_header [8];
    OPJ_UINT32 version;

    num_max_tile_parts = (OPJ_UINT32)FUNC0(cstr_info);

    if (j2klen > FUNC6(2, 32)) {
        size_of_coding =  8;
        version = num_max_tile_parts == 1 ? 1 : 3;
    } else {
        size_of_coding = 4;
        version = num_max_tile_parts == 1 ? 0 : 2;
    }

    lenp = FUNC3(cio);
    FUNC2(cio, 4, p_manager);         /* L [at the end]      */
    FUNC5(l_data_header, JPIP_FAIX, 4); /* FAIX */
    FUNC4(cio, l_data_header, 4, p_manager);
    FUNC5(l_data_header, version, 1); /* Version 0 = 4 bytes */
    FUNC4(cio, l_data_header, 1, p_manager);

    FUNC5(l_data_header, num_max_tile_parts,
                    size_of_coding);       /* NMAX           */
    FUNC4(cio, l_data_header, size_of_coding, p_manager);
    FUNC5(l_data_header, (OPJ_UINT32)(cstr_info.tw * cstr_info.th),
                    size_of_coding);  /* M              */
    FUNC4(cio, l_data_header, size_of_coding, p_manager);

    for (i = 0; i < (OPJ_UINT32)(cstr_info.tw * cstr_info.th); i++) {
        for (j = 0; j < (OPJ_UINT32)cstr_info.tile[i].num_tps; j++) {
            tp = cstr_info.tile[i].tp[j];

            FUNC5(l_data_header, (OPJ_UINT32)(tp.tp_start_pos - coff),
                            size_of_coding);            /* start position */
            FUNC4(cio, l_data_header, size_of_coding, p_manager);
            FUNC5(l_data_header,
                            (OPJ_UINT32)(tp.tp_end_pos - tp.tp_start_pos + 1),
                            size_of_coding); /* length         */
            FUNC4(cio, l_data_header, size_of_coding, p_manager);

            if (version & 0x02) {
                if (cstr_info.tile[i].num_tps == 1 && cstr_info.numdecompos[compno] > 1) {
                    Aux = (OPJ_UINT32)(cstr_info.numdecompos[compno] + 1);
                } else {
                    Aux = j + 1;
                }

                FUNC5(l_data_header, Aux, 4);
                FUNC4(cio, l_data_header, 4, p_manager);

                /*cio_write(img.tile[i].tile_parts[j].num_reso_AUX,4);*/ /* Aux_i,j : Auxiliary value */
                /* fprintf(stderr,"AUX value %d\n",Aux);*/
            }
            /*cio_write(0,4);*/
        }
        /* PADDING */
        while (j < num_max_tile_parts) {

            FUNC5(l_data_header, 0,
                            size_of_coding); /* start position            */
            FUNC4(cio, l_data_header, size_of_coding, p_manager);
            FUNC5(l_data_header, 0,
                            size_of_coding); /* length                    */
            FUNC4(cio, l_data_header, size_of_coding, p_manager);

            if (version & 0x02) {
                FUNC5(l_data_header, 0, 4);    /* Aux_i,j : Auxiliary value */
            }
            FUNC4(cio, l_data_header, 4, p_manager);
            j++;
        }
    }

    len = (OPJ_UINT32)(FUNC3(cio) - lenp);
    FUNC1(cio, lenp, p_manager);
    FUNC5(l_data_header, len, 4); /* L  */
    FUNC4(cio, l_data_header, 4, p_manager);
    FUNC1(cio, lenp + len, p_manager);

    return (int)len;
}