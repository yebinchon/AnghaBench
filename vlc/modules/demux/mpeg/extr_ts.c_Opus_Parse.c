
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ int16_t ;
typedef int demux_t ;
struct TYPE_10__ {int* p_buffer; size_t i_buffer; scalar_t__ i_nb_samples; scalar_t__ i_length; int i_flags; } ;
typedef TYPE_1__ block_t ;


 int BLOCK_FLAG_PREROLL ;
 TYPE_1__* block_Alloc (unsigned int) ;
 int block_ChainLastAppend (TYPE_1__***,TYPE_1__*) ;
 int block_CopyProperties (TYPE_1__*,TYPE_1__*) ;
 int block_Release (TYPE_1__*) ;
 int memcpy (int*,int*,unsigned int) ;
 int msg_Err (int *,char*,...) ;
 scalar_t__ opus_frame_duration (int*,unsigned int) ;
 scalar_t__ read_opus_flag (int**,size_t*) ;

__attribute__((used)) static block_t *Opus_Parse(demux_t *demux, block_t *block)
{
    block_t *p_chain = ((void*)0);
    block_t **pp_chain_last = &p_chain;

    uint8_t *buf = block->p_buffer;
    size_t len = block->i_buffer;

    while (len > 3 && ((buf[0] << 3) | (buf[1] >> 5)) == 0x3ff) {
        int16_t start_trim = 0, end_trim = 0;
        int start_trim_flag = (buf[1] >> 4) & 1;
        int end_trim_flag = (buf[1] >> 3) & 1;
        int control_extension_flag = (buf[1] >> 2) & 1;

        len -= 2;
        buf += 2;

        unsigned au_size = 0;
        while (len--) {
            int c = *buf++;
            au_size += c;
            if (c != 0xff)
                break;
        }

        if (start_trim_flag) {
            start_trim = read_opus_flag(&buf, &len);
            if (start_trim < 0) {
                msg_Err(demux, "Invalid start trimming flag");
            }
        }
        if (end_trim_flag) {
            end_trim = read_opus_flag(&buf, &len);
            if (end_trim < 0) {
                msg_Err(demux, "Invalid end trimming flag");
            }
        }
        if (control_extension_flag && len) {
            unsigned l = *buf++; len--;
            if (l > len) {
                msg_Err(demux, "Invalid control extension length %d > %zu", l, len);
                break;
            }
            buf += l;
            len -= l;
        }

        if (!au_size || au_size > len) {
            msg_Err(demux, "Invalid Opus AU size %d (PES %zu)", au_size, len);
            break;
        }

        block_t *au = block_Alloc(au_size);
        if (!au)
            break;
        memcpy(au->p_buffer, buf, au_size);
        block_CopyProperties(au, block);
        block_ChainLastAppend( &pp_chain_last, au );

        au->i_nb_samples = opus_frame_duration(buf, au_size);
        if (end_trim && (uint16_t) end_trim <= au->i_nb_samples)
            au->i_length = end_trim;
        else
            au->i_length = 0;

        if (start_trim && start_trim < (au->i_nb_samples - au->i_length)) {
            au->i_nb_samples -= start_trim;
            if (au->i_nb_samples == 0)
                au->i_flags |= BLOCK_FLAG_PREROLL;
        }

        buf += au_size;
        len -= au_size;
    }

    block_Release(block);
    return p_chain;
}
