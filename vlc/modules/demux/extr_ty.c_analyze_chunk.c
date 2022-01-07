
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_8__ {int subrec_type; int rec_type; int l_rec_size; } ;
typedef TYPE_1__ ty_rec_hdr_t ;
struct TYPE_9__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ demux_t ;
struct TYPE_10__ {scalar_t__ tivo_series; scalar_t__ tivo_type; int i_Pts_Offset; int audio_type; int i_Pes_Length; } ;
typedef TYPE_3__ demux_sys_t ;


 int AC3_PES_LENGTH ;
 int AC3_PTS_OFFSET ;
 int DTIVO_PTS_OFFSET ;
 int SA_PTS_OFFSET ;
 int SERIES1_PES_LENGTH ;
 int SERIES2_PES_LENGTH ;
 int TIVO_AUDIO_AC3 ;
 int TIVO_AUDIO_MPEG ;
 scalar_t__ TIVO_PES_FILEID ;
 scalar_t__ TIVO_SERIES1 ;
 scalar_t__ TIVO_SERIES2 ;
 void* TIVO_TYPE_DTIVO ;
 scalar_t__ TIVO_TYPE_SA ;
 scalar_t__ TIVO_TYPE_UNKNOWN ;
 scalar_t__ U32_AT (int const*) ;
 int find_es_header (int ,int const*,int) ;
 int free (TYPE_1__*) ;
 int msg_Dbg (TYPE_2__*,char*,...) ;
 TYPE_1__* parse_chunk_headers (int const*,int,int*) ;
 int ty_MPEGAudioPacket ;

__attribute__((used)) static void analyze_chunk(demux_t *p_demux, const uint8_t *p_chunk)
{
    demux_sys_t *p_sys = p_demux->p_sys;
    int i_num_recs, i;
    ty_rec_hdr_t *p_hdrs;
    int i_num_6e0, i_num_be0, i_num_9c0, i_num_3c0;
    int i_payload_size;


    if( U32_AT( &p_chunk[ 0 ] ) == TIVO_PES_FILEID )
        return;



    i_num_recs = p_chunk[0];
    if (i_num_recs < 5) {

        return;
    }

    p_chunk += 4;

    p_hdrs = parse_chunk_headers(p_chunk, i_num_recs, &i_payload_size);







    i_num_6e0 = i_num_be0 = i_num_9c0 = i_num_3c0 = 0;
    for (i=0; i<i_num_recs; i++) {



        switch (p_hdrs[i].subrec_type << 8 | p_hdrs[i].rec_type) {
            case 0x6e0:
                i_num_6e0++;
                break;
            case 0xbe0:
                i_num_be0++;
                break;
            case 0x3c0:
                i_num_3c0++;
                break;
            case 0x9c0:
                i_num_9c0++;
                break;
        }
    }
    msg_Dbg(p_demux, "probe: chunk has %d 0x6e0 recs, %d 0xbe0 recs.",
        i_num_6e0, i_num_be0);


    if (i_num_6e0 > 0) {
        msg_Dbg(p_demux, "detected Series 1 Tivo");
        p_sys->tivo_series = TIVO_SERIES1;
        p_sys->i_Pes_Length = SERIES1_PES_LENGTH;
    } else if (i_num_be0 > 0) {
        msg_Dbg(p_demux, "detected Series 2 Tivo");
        p_sys->tivo_series = TIVO_SERIES2;
        p_sys->i_Pes_Length = SERIES2_PES_LENGTH;
    }
    if (i_num_9c0 > 0) {
        msg_Dbg(p_demux, "detected AC-3 Audio (DTivo)" );
        p_sys->audio_type = TIVO_AUDIO_AC3;
        p_sys->tivo_type = TIVO_TYPE_DTIVO;
        p_sys->i_Pts_Offset = AC3_PTS_OFFSET;
        p_sys->i_Pes_Length = AC3_PES_LENGTH;
    } else if (i_num_3c0 > 0) {
        p_sys->audio_type = TIVO_AUDIO_MPEG;
        msg_Dbg(p_demux, "detected MPEG Audio" );
    }



    if (p_sys->tivo_type == TIVO_TYPE_UNKNOWN) {
        uint32_t i_data_offset = (16 * i_num_recs);
        for (i=0; i<i_num_recs; i++) {
            if ((p_hdrs[i].subrec_type << 0x08 | p_hdrs[i].rec_type) == 0x3c0 &&
                    p_hdrs[i].l_rec_size > 15) {

                int i_pes_offset = find_es_header(ty_MPEGAudioPacket,
                        &p_chunk[i_data_offset], 5);
                if (i_pes_offset >= 0) {



                    if ((p_chunk[i_data_offset + 6 + i_pes_offset] & 0x80) == 0x80) {

                        if (p_sys->tivo_series == TIVO_SERIES1)
                            msg_Dbg(p_demux, "detected Stand-Alone Tivo" );
                        p_sys->tivo_type = TIVO_TYPE_SA;
                        p_sys->i_Pts_Offset = SA_PTS_OFFSET;
                    } else {
                        if (p_sys->tivo_series == TIVO_SERIES1)
                            msg_Dbg(p_demux, "detected DirecTV Tivo" );
                        p_sys->tivo_type = TIVO_TYPE_DTIVO;
                        p_sys->i_Pts_Offset = DTIVO_PTS_OFFSET;
                    }
                    break;
                }
            }
            i_data_offset += p_hdrs[i].l_rec_size;
        }
    }
    free(p_hdrs);
}
