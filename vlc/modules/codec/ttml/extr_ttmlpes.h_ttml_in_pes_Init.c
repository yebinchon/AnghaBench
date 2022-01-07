
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttml_in_pes_ctx {int i_prev_block_time; int i_prev_segment_start_time; scalar_t__ i_offset; } ;



__attribute__((used)) static void ttml_in_pes_Init(struct ttml_in_pes_ctx *p)
{
    p->i_offset = 0;
    p->i_prev_block_time = -1;
    p->i_prev_segment_start_time = -1;
}
