
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t stb_uint ;
struct TYPE_2__ {int total_bytes; int valid; int size; int start; int fsize; int pending_literals; size_t hashmask; int window; int ** chash; int * buffer; } ;


 int assert (int) ;
 int memcpy (int *,char*,int) ;
 int memmove (int *,int *,int) ;
 int outliterals (int *,int) ;
 int stb_compress_chunk (int *,int *,int *,int,int*,int **,size_t) ;
 TYPE_1__ xtb ;

void stb_write(char *data, int data_len)
{
   stb_uint i;




   xtb.total_bytes += data_len;

   while (data_len) {

      if (xtb.valid < xtb.size) {
         int amt = xtb.size - xtb.valid;
         if (data_len < amt) amt = data_len;
         memcpy(xtb.buffer + xtb.valid, data, amt);
         data_len -= amt;
         data += amt;
         xtb.valid += amt;
      }
      if (xtb.valid < xtb.size)
         return;





      if (xtb.start + xtb.fsize < xtb.valid) {
         int amount = (xtb.valid - xtb.fsize) - xtb.start;
         int n;
         assert(amount > 0);
         n = stb_compress_chunk(xtb.buffer, xtb.buffer + xtb.start, xtb.buffer + xtb.valid,
                                amount, &xtb.pending_literals, xtb.chash, xtb.hashmask);
         xtb.start += n;
      }

      assert(xtb.start + xtb.fsize >= xtb.valid);




      {
         int flush = xtb.window;
         assert(xtb.start >= flush);
         assert(xtb.valid >= flush);



         if (xtb.start - xtb.pending_literals < flush) {
            outliterals(xtb.buffer + xtb.start - xtb.pending_literals, xtb.pending_literals);
            xtb.pending_literals = 0;
         }


         memmove(xtb.buffer, xtb.buffer + flush, xtb.valid - flush);
         xtb.start -= flush;
         xtb.valid -= flush;

         for (i=0; i <= xtb.hashmask; ++i)
            if (xtb.chash[i] < xtb.buffer + flush)
               xtb.chash[i] = ((void*)0);
            else
               xtb.chash[i] -= flush;
      }

   }
}
