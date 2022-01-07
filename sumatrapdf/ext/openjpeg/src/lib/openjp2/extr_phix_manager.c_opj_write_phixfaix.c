
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* ph; int* pw; TYPE_2__* packet; } ;
typedef TYPE_1__ opj_tile_info_t ;
typedef int opj_stream_private_t ;
struct TYPE_6__ {int end_ph_pos; int start_pos; } ;
typedef TYPE_2__ opj_packet_info_t ;
typedef int opj_event_mgr_t ;
struct TYPE_7__ {int* numdecompos; int numlayers; int tw; int th; int prog; int numcomps; TYPE_1__* tile; } ;
typedef TYPE_3__ opj_codestream_info_t ;
typedef size_t OPJ_UINT32 ;
typedef scalar_t__ OPJ_OFF_T ;
typedef int OPJ_BYTE ;
typedef int OPJ_BOOL ;


 size_t JPIP_FAIX ;





 int fprintf (int ,char*) ;
 int opj_stream_seek (int *,scalar_t__,int *) ;
 int opj_stream_skip (int *,int,int *) ;
 scalar_t__ opj_stream_tell (int *) ;
 int opj_stream_write_data (int *,int *,int,int *) ;
 int opj_write_bytes (int *,size_t,int) ;
 int pow (int,int) ;
 int stderr ;

int opj_write_phixfaix(int coff, int compno, opj_codestream_info_t cstr_info,
                       OPJ_BOOL EPHused, int j2klen, opj_stream_private_t *cio,
                       opj_event_mgr_t * p_manager)
{
    OPJ_UINT32 tileno, version, i, nmax, size_of_coding;
    opj_tile_info_t *tile_Idx;
    opj_packet_info_t packet;
    int resno, precno, layno;
    OPJ_UINT32 num_packet;
    int numOfres, numOfprec, numOflayers;
    OPJ_BYTE l_data_header [8];
    OPJ_OFF_T lenp;
    OPJ_UINT32 len;

    packet.end_ph_pos = packet.start_pos = -1;
    (void)EPHused;


    if (j2klen > pow(2, 32)) {
        size_of_coding = 8;
        version = 1;
    } else {
        size_of_coding = 4;
        version = 0;
    }

    lenp = opj_stream_tell(cio);
    opj_stream_skip(cio, 4, p_manager);
    opj_write_bytes(l_data_header, JPIP_FAIX, 4);
    opj_stream_write_data(cio, l_data_header, 4, p_manager);
    opj_write_bytes(l_data_header, version, 1);
    opj_stream_write_data(cio, l_data_header, 1, p_manager);

    nmax = 0;
    for (i = 0; i <= (OPJ_UINT32)cstr_info.numdecompos[compno]; i++) {
        nmax += (OPJ_UINT32)(cstr_info.tile[0].ph[i] * cstr_info.tile[0].pw[i] *
                             cstr_info.numlayers);
    }

    opj_write_bytes(l_data_header, nmax, size_of_coding);
    opj_stream_write_data(cio, l_data_header, size_of_coding, p_manager);
    opj_write_bytes(l_data_header, (OPJ_UINT32)(cstr_info.tw * cstr_info.th),
                    size_of_coding);
    opj_stream_write_data(cio, l_data_header, size_of_coding, p_manager);

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
                    case 131:
                        packet = tile_Idx->packet[((layno * numOfres + resno) * cstr_info.numcomps +
                                                                               compno) * numOfprec + precno];
                        break;
                    case 129:
                        packet = tile_Idx->packet[((resno * numOflayers + layno) * cstr_info.numcomps +
                                                                                  compno) * numOfprec + precno];
                        break;
                    case 128:
                        packet = tile_Idx->packet[((resno * numOfprec + precno) * cstr_info.numcomps +
                                                                                 compno) * numOflayers + layno];
                        break;
                    case 130:
                        packet = tile_Idx->packet[((precno * cstr_info.numcomps + compno) * numOfres +
                                                                                           resno) * numOflayers + layno];
                        break;
                    case 132:
                        packet = tile_Idx->packet[((compno * numOfprec + precno) * numOfres + resno) *
                                                                                 numOflayers + layno];
                        break;
                    default:
                        fprintf(stderr, "failed to ppix indexing\n");
                    }

                    opj_write_bytes(l_data_header, (OPJ_UINT32)(packet.start_pos - coff),
                                    size_of_coding);
                    opj_stream_write_data(cio, l_data_header, size_of_coding, p_manager);
                    opj_write_bytes(l_data_header,
                                    (OPJ_UINT32)(packet.end_ph_pos - packet.start_pos + 1),
                                    size_of_coding);
                    opj_stream_write_data(cio, l_data_header, size_of_coding, p_manager);

                    num_packet++;
                }
            }
        }


        while (num_packet < nmax) {
            opj_write_bytes(l_data_header, 0,
                            size_of_coding);
            opj_stream_write_data(cio, l_data_header, size_of_coding, p_manager);
            opj_write_bytes(l_data_header, 0,
                            size_of_coding);
            opj_stream_write_data(cio, l_data_header, size_of_coding, p_manager);
            num_packet++;
        }
    }

    len = (OPJ_UINT32)(opj_stream_tell(cio) - lenp);
    opj_stream_seek(cio, lenp, p_manager);
    opj_write_bytes(l_data_header, len, 4);
    opj_stream_write_data(cio, l_data_header, 4, p_manager);
    opj_stream_seek(cio, lenp + len, p_manager);

    return (int)len;
}
