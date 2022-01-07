
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int istream_t ;
struct TYPE_3__ {int single_segment_flag; int content_checksum_flag; size_t window_size; int frame_content_size; scalar_t__ dictionary_id; } ;
typedef TYPE_1__ frame_header_t ;


 int CORRUPTION () ;
 int IO_read_bits (int * const,int const) ;

__attribute__((used)) static void parse_frame_header(frame_header_t *const header,
                               istream_t *const in) {
    const u8 descriptor = (u8)IO_read_bits(in, 8);


    const u8 frame_content_size_flag = descriptor >> 6;
    const u8 single_segment_flag = (descriptor >> 5) & 1;
    const u8 reserved_bit = (descriptor >> 3) & 1;
    const u8 content_checksum_flag = (descriptor >> 2) & 1;
    const u8 dictionary_id_flag = descriptor & 3;

    if (reserved_bit != 0) {
        CORRUPTION();
    }

    header->single_segment_flag = single_segment_flag;
    header->content_checksum_flag = content_checksum_flag;


    if (!single_segment_flag) {






        u8 window_descriptor = (u8)IO_read_bits(in, 8);
        u8 exponent = window_descriptor >> 3;
        u8 mantissa = window_descriptor & 7;



        size_t window_base = (size_t)1 << (10 + exponent);
        size_t window_add = (window_base / 8) * mantissa;
        header->window_size = window_base + window_add;
    }


    if (dictionary_id_flag) {




        const int bytes_array[] = {0, 1, 2, 4};
        const int bytes = bytes_array[dictionary_id_flag];

        header->dictionary_id = (u32)IO_read_bits(in, bytes * 8);
    } else {
        header->dictionary_id = 0;
    }


    if (single_segment_flag || frame_content_size_flag) {







        const int bytes_array[] = {1, 2, 4, 8};
        const int bytes = bytes_array[frame_content_size_flag];

        header->frame_content_size = IO_read_bits(in, bytes * 8);
        if (bytes == 2) {

            header->frame_content_size += 256;
        }
    } else {
        header->frame_content_size = 0;
    }

    if (single_segment_flag) {




        header->window_size = header->frame_content_size;
    }
}
