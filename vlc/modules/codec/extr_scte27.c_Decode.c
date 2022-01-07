
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int subpicture_t ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_11__ {int segment_id; scalar_t__ segment_size; scalar_t__ segment_date; int* segment_buffer; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_12__ {int i_flags; int i_buffer; int* p_buffer; scalar_t__ i_pts; scalar_t__ i_dts; } ;
typedef TYPE_3__ block_t ;


 int BLOCK_FLAG_CORRUPTED ;
 int * DecodeSubtitleMessage (TYPE_1__*,int*,int const,scalar_t__) ;
 int GetWBE (int*) ;
 int VLCDEC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 int block_Release (TYPE_3__*) ;
 int decoder_QueueSub (TYPE_1__*,int *) ;
 int memcpy (int*,int*,int) ;
 int msg_Err (TYPE_1__*,char*,...) ;
 int* xrealloc (int*,scalar_t__) ;

__attribute__((used)) static int Decode(decoder_t *dec, block_t *b)
{
    decoder_sys_t *sys = dec->p_sys;

    if (b == ((void*)0) )
        return VLCDEC_SUCCESS;

    if (b->i_flags & (BLOCK_FLAG_CORRUPTED))
        goto exit;

    while (b->i_buffer > 3) {
        const int table_id = b->p_buffer[0];
        if (table_id != 0xc6) {


            break;
        }
        const int section_length = ((b->p_buffer[1] & 0xf) << 8) | b->p_buffer[2];
        if (section_length <= 1 + 4 || b->i_buffer < 3 + (unsigned)section_length) {
            msg_Err(dec, "Invalid SCTE-27 section length");
            break;
        }
        const int protocol_version = b->p_buffer[3] & 0x3f;
        if (protocol_version != 0) {
            msg_Err(dec, "Unsupported SCTE-27 protocol version (%d)", protocol_version);
            break;
        }
        const bool segmentation_overlay = b->p_buffer[3] & 0x40;

        subpicture_t *sub = ((void*)0);
        if (segmentation_overlay) {
            if (section_length < 1 + 5 + 4)
                break;
            int id = GetWBE(&b->p_buffer[4]);
            int last = (b->p_buffer[6] << 4) | (b->p_buffer[7] >> 4);
            int index = ((b->p_buffer[7] & 0x0f) << 8) | b->p_buffer[8];
            if (index > last)
                break;
            if (index == 0) {
                sys->segment_id = id;
                sys->segment_size = 0;
                sys->segment_date = b->i_pts != VLC_TICK_INVALID ? b->i_pts : b->i_dts;
            } else {
                if (sys->segment_id != id || sys->segment_size <= 0) {
                    sys->segment_id = -1;
                    break;
                }
            }

            int segment_size = section_length - 1 - 5 - 4;

            sys->segment_buffer = xrealloc(sys->segment_buffer,
                                           sys->segment_size + segment_size);
            memcpy(&sys->segment_buffer[sys->segment_size],
                   &b->p_buffer[9], segment_size);
            sys->segment_size += segment_size;

            if (index == last) {
                sub = DecodeSubtitleMessage(dec,
                                            sys->segment_buffer,
                                            sys->segment_size,
                                            sys->segment_date);
                sys->segment_size = 0;
            }
        } else {
            sub = DecodeSubtitleMessage(dec,
                                        &b->p_buffer[4],
                                        section_length - 1 - 4,
                                        b->i_pts != VLC_TICK_INVALID ? b->i_pts : b->i_dts);
        }
        if (sub != ((void*)0))
            decoder_QueueSub(dec, sub);

        b->i_buffer -= 3 + section_length;
        b->p_buffer += 3 + section_length;
        break;
    }

exit:
    block_Release(b);
    return VLCDEC_SUCCESS;
}
