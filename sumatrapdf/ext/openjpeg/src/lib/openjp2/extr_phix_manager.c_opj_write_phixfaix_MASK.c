#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int* ph; int* pw; TYPE_2__* packet; } ;
typedef  TYPE_1__ opj_tile_info_t ;
typedef  int /*<<< orphan*/  opj_stream_private_t ;
struct TYPE_6__ {int end_ph_pos; int start_pos; } ;
typedef  TYPE_2__ opj_packet_info_t ;
typedef  int /*<<< orphan*/  opj_event_mgr_t ;
struct TYPE_7__ {int* numdecompos; int numlayers; int tw; int th; int prog; int numcomps; TYPE_1__* tile; } ;
typedef  TYPE_3__ opj_codestream_info_t ;
typedef  size_t OPJ_UINT32 ;
typedef  scalar_t__ OPJ_OFF_T ;
typedef  int /*<<< orphan*/  OPJ_BYTE ;
typedef  int /*<<< orphan*/  OPJ_BOOL ;

/* Variables and functions */
 size_t JPIP_FAIX ; 
#define  OPJ_CPRL 132 
#define  OPJ_LRCP 131 
#define  OPJ_PCRL 130 
#define  OPJ_RLCP 129 
#define  OPJ_RPCL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,int) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC7(int coff, int compno, opj_codestream_info_t cstr_info,
                       OPJ_BOOL EPHused, int j2klen, opj_stream_private_t *cio,
                       opj_event_mgr_t * p_manager)
{
    OPJ_UINT32 tileno, version, i, nmax, size_of_coding; /* 4 or 8 */
    opj_tile_info_t *tile_Idx;
    opj_packet_info_t packet;
    int resno, precno, layno;
    OPJ_UINT32 num_packet;
    int numOfres, numOfprec, numOflayers;
    OPJ_BYTE l_data_header [8];
    OPJ_OFF_T lenp;
    OPJ_UINT32 len;

    packet.end_ph_pos = packet.start_pos = -1;
    (void)EPHused; /* unused ? */


    if (j2klen > FUNC6(2, 32)) {
        size_of_coding =  8;
        version = 1;
    } else {
        size_of_coding = 4;
        version = 0;
    }

    lenp = FUNC3(cio);
    FUNC2(cio, 4, p_manager);         /* L [at the end]      */
    FUNC5(l_data_header, JPIP_FAIX, 4); /* FAIX */
    FUNC4(cio, l_data_header, 4, p_manager);
    FUNC5(l_data_header, version, 1); /* Version 0 = 4 bytes */
    FUNC4(cio, l_data_header, 1, p_manager);

    nmax = 0;
    for (i = 0; i <= (OPJ_UINT32)cstr_info.numdecompos[compno]; i++) {
        nmax += (OPJ_UINT32)(cstr_info.tile[0].ph[i] * cstr_info.tile[0].pw[i] *
                             cstr_info.numlayers);
    }

    FUNC5(l_data_header, nmax, size_of_coding);       /* NMAX           */
    FUNC4(cio, l_data_header, size_of_coding, p_manager);
    FUNC5(l_data_header, (OPJ_UINT32)(cstr_info.tw * cstr_info.th),
                    size_of_coding);  /* M              */
    FUNC4(cio, l_data_header, size_of_coding, p_manager);

    for (tileno = 0; tileno < (OPJ_UINT32)(cstr_info.tw * cstr_info.th); tileno++) {
        tile_Idx = &cstr_info.tile[ tileno];

        num_packet = 0;
        numOfres = cstr_info.numdecompos[compno] + 1;

        for (resno = 0; resno < numOfres ; resno++) {
            numOfprec = tile_Idx->pw[resno] * tile_Idx->ph[resno];
            for (precno = 0; precno < numOfprec; precno++) {
                numOflayers = cstr_info.numlayers;
                for (layno = 0; layno < numOflayers; layno++) {

                    switch (cstr_info.prog) {
                    case OPJ_LRCP:
                        packet = tile_Idx->packet[((layno * numOfres + resno) * cstr_info.numcomps +
                                                                               compno) * numOfprec + precno];
                        break;
                    case OPJ_RLCP:
                        packet = tile_Idx->packet[((resno * numOflayers + layno) * cstr_info.numcomps +
                                                                                  compno) * numOfprec + precno];
                        break;
                    case OPJ_RPCL:
                        packet = tile_Idx->packet[((resno * numOfprec + precno) * cstr_info.numcomps +
                                                                                 compno) * numOflayers + layno];
                        break;
                    case OPJ_PCRL:
                        packet = tile_Idx->packet[((precno * cstr_info.numcomps + compno) * numOfres +
                                                                                           resno) * numOflayers + layno];
                        break;
                    case OPJ_CPRL:
                        packet = tile_Idx->packet[((compno * numOfprec + precno) * numOfres + resno) *
                                                                                 numOflayers + layno];
                        break;
                    default:
                        FUNC0(stderr, "failed to ppix indexing\n");
                    }

                    FUNC5(l_data_header, (OPJ_UINT32)(packet.start_pos - coff),
                                    size_of_coding);            /* start position */
                    FUNC4(cio, l_data_header, size_of_coding, p_manager);
                    FUNC5(l_data_header,
                                    (OPJ_UINT32)(packet.end_ph_pos - packet.start_pos + 1),
                                    size_of_coding); /* length         */
                    FUNC4(cio, l_data_header, size_of_coding, p_manager);

                    num_packet++;
                }
            }
        }

        /* PADDING */
        while (num_packet < nmax) {
            FUNC5(l_data_header, 0,
                            size_of_coding); /* start position            */
            FUNC4(cio, l_data_header, size_of_coding, p_manager);
            FUNC5(l_data_header, 0,
                            size_of_coding); /* length                    */
            FUNC4(cio, l_data_header, size_of_coding, p_manager);
            num_packet++;
        }
    }

    len = (OPJ_UINT32)(FUNC3(cio) - lenp);
    FUNC1(cio, lenp, p_manager);
    FUNC5(l_data_header, len, 4); /* L  */
    FUNC4(cio, l_data_header, 4, p_manager);
    FUNC1(cio, lenp + len, p_manager);

    return (int)len;
}