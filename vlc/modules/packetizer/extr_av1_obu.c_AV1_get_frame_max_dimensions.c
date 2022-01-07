
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int max_frame_height_minus_1; unsigned int max_frame_width_minus_1; } ;
typedef TYPE_1__ av1_OBU_sequence_header_t ;



void AV1_get_frame_max_dimensions(const av1_OBU_sequence_header_t *p_seq, unsigned *w, unsigned *h)
{
    *h = 1 + p_seq->max_frame_height_minus_1;
    *w = 1 + p_seq->max_frame_width_minus_1;
}
