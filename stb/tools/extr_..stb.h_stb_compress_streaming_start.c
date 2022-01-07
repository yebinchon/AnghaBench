
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int stb_uint ;
typedef int stb_uchar ;
struct TYPE_2__ {int size; int hashmask; int window; int fsize; int length_id; scalar_t__ total_bytes; scalar_t__ pending_literals; scalar_t__ start; scalar_t__ valid; int ** chash; int * buffer; } ;


 int free (int *) ;
 scalar_t__ malloc (int) ;
 int stb__hashsize ;
 int stb__running_adler ;
 int stb__window ;
 int stb_out (int) ;
 int stb_out2 (int ) ;
 int stb_out4 (int) ;
 scalar_t__ stb_out_backpatch_id () ;
 TYPE_1__ xtb ;

__attribute__((used)) static int stb_compress_streaming_start(void)
{
   stb_uint i;
   xtb.size = stb__window * 3;
   xtb.buffer = (stb_uchar*)malloc(xtb.size);
   if (!xtb.buffer) return 0;

   xtb.chash = (stb_uchar**)malloc(sizeof(*xtb.chash) * stb__hashsize);
   if (!xtb.chash) {
      free(xtb.buffer);
      return 0;
   }

   for (i=0; i < stb__hashsize; ++i)
      xtb.chash[i] = ((void*)0);

   xtb.hashmask = stb__hashsize-1;

   xtb.valid = 0;
   xtb.start = 0;
   xtb.window = stb__window;
   xtb.fsize = stb__window;
   xtb.pending_literals = 0;
   xtb.total_bytes = 0;


   stb_out(0x57); stb_out(0xbc); stb_out2(0);

   stb_out4(0);

   xtb.length_id = (int) stb_out_backpatch_id();
   stb_out4(0);

   stb_out4(stb__window);

   stb__running_adler = 1;

   return 1;
}
