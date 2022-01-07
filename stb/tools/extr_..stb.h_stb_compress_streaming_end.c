
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ chash; scalar_t__ buffer; int total_bytes; int length_id; scalar_t__ pending_literals; scalar_t__ valid; int hashmask; scalar_t__ start; } ;


 int free (scalar_t__) ;
 int outliterals (scalar_t__,scalar_t__) ;
 int stb__running_adler ;
 int stb_compress_chunk (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__,int ) ;
 int stb_out2 (int) ;
 int stb_out4 (int ) ;
 int stb_out_backpatch (int ,int ) ;
 TYPE_1__ xtb ;

__attribute__((used)) static int stb_compress_streaming_end(void)
{

   stb_compress_chunk(xtb.buffer, xtb.buffer+xtb.start, xtb.buffer+xtb.valid,
                      xtb.valid-xtb.start, &xtb.pending_literals, xtb.chash, xtb.hashmask);


   outliterals(xtb.buffer + xtb.valid - xtb.pending_literals, xtb.pending_literals);

   stb_out2(0x05fa);
   stb_out4(stb__running_adler);

   stb_out_backpatch(xtb.length_id, xtb.total_bytes);

   free(xtb.buffer);
   free(xtb.chash);
   return 1;
}
