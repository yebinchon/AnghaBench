
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct jpeg_source_mgr {size_t bytes_in_buffer; size_t next_input_byte; } ;
typedef TYPE_1__* j_decompress_ptr ;
struct TYPE_3__ {struct jpeg_source_mgr* src; } ;



__attribute__((used)) static void skip_input_data(j_decompress_ptr cinfo, long num_bytes)
{
 struct jpeg_source_mgr *src = cinfo->src;
 if (num_bytes > 0)
 {
  size_t skip = (size_t)num_bytes;
  if (skip > src->bytes_in_buffer)
   skip = (size_t)src->bytes_in_buffer;
  src->next_input_byte += skip;
  src->bytes_in_buffer -= skip;
 }
}
