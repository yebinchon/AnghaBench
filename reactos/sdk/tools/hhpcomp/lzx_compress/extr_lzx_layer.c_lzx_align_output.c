
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len_compressed_output; int len_uncompressed_input; int mark_frame_arg; int (* mark_frame ) (int ,int ,int ) ;scalar_t__ bits_in_buf; } ;
typedef TYPE_1__ lzx_data ;


 int lzx_write_bits (TYPE_1__*,scalar_t__,int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void lzx_align_output(lzx_data *lzxd)
{
  if (lzxd->bits_in_buf) {
    lzx_write_bits(lzxd, 16 - lzxd->bits_in_buf, 0);
  }
  if (lzxd->mark_frame)
    lzxd->mark_frame(lzxd->mark_frame_arg, lzxd->len_uncompressed_input, lzxd->len_compressed_output);
}
