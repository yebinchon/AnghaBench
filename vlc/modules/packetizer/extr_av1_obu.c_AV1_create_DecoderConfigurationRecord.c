
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int bs_t ;
struct TYPE_6__ {int high_bitdepth; int twelve_bit; int mono_chrome; int subsampling_x; int subsampling_y; int chroma_sample_position; } ;
struct TYPE_7__ {int seq_profile; TYPE_2__ color_config; TYPE_1__* operating_points; } ;
typedef TYPE_3__ av1_OBU_sequence_header_t ;
struct TYPE_5__ {int seq_level_idx; int seq_tier; } ;


 int bs_write (int *,int,int) ;
 int bs_write_init (int *,int *,size_t) ;
 int * malloc (size_t) ;
 int memcpy (int *,int const*,size_t const) ;

size_t AV1_create_DecoderConfigurationRecord(uint8_t **pp_buffer,
                                             const av1_OBU_sequence_header_t *p_seq,
                                             size_t i_obu, const uint8_t *p_obus[],
                                             const size_t pi_obus[])
{
    size_t i_buffer = 4;
    for(size_t i=0; i<i_obu; i++)
        i_buffer += pi_obus[i];

    uint8_t *p_buffer = malloc(i_buffer);
    if(!p_buffer)
        return 0;

    bs_t bs;
    bs_write_init(&bs, p_buffer, i_buffer);
    bs_write(&bs, 1, 1);
    bs_write(&bs, 7, 1);
    bs_write(&bs, 3, p_seq->seq_profile);
    bs_write(&bs, 5, p_seq->operating_points[0].seq_level_idx);

    bs_write(&bs, 1, p_seq->operating_points[0].seq_tier);
    bs_write(&bs, 1, p_seq->color_config.high_bitdepth);
    bs_write(&bs, 1, p_seq->color_config.twelve_bit);
    bs_write(&bs, 1, p_seq->color_config.mono_chrome);
    bs_write(&bs, 1, p_seq->color_config.subsampling_x);
    bs_write(&bs, 1, p_seq->color_config.subsampling_y);
    bs_write(&bs, 2, p_seq->color_config.chroma_sample_position);

    bs_write(&bs, 3, 0);
    bs_write(&bs, 1, 0);
    bs_write(&bs, 4, 0);


    size_t i_offset = 4;
    for(size_t i=0; i<i_obu; i++)
        memcpy(&p_buffer[i_offset], p_obus[i], pi_obus[i]);

    *pp_buffer = p_buffer;
    return i_buffer;
}
