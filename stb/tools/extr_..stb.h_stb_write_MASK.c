#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t stb_uint ;
struct TYPE_2__ {int total_bytes; int valid; int size; int start; int fsize; int pending_literals; size_t hashmask; int window; int /*<<< orphan*/ ** chash; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ **,size_t) ; 
 TYPE_1__ xtb ; 

void FUNC5(char *data, int data_len)
{
   stb_uint i;

   // @TODO: fast path for filling the buffer and doing nothing else
   //   if (xtb.valid + data_len < xtb.size)

   xtb.total_bytes += data_len;

   while (data_len) {
      // fill buffer
      if (xtb.valid < xtb.size) {
         int amt = xtb.size - xtb.valid;
         if (data_len < amt) amt = data_len;
         FUNC1(xtb.buffer + xtb.valid, data, amt);
         data_len -= amt;
         data     += amt;
         xtb.valid += amt;
      }
      if (xtb.valid < xtb.size)
         return;

      // at this point, the buffer is full

      // if we can process some data, go for it; make sure
      // we leave an 'fsize's worth of data, though
      if (xtb.start + xtb.fsize < xtb.valid) {
         int amount = (xtb.valid - xtb.fsize) - xtb.start;
         int n;
         FUNC0(amount > 0);
         n = FUNC4(xtb.buffer, xtb.buffer + xtb.start, xtb.buffer + xtb.valid,
                                amount, &xtb.pending_literals, xtb.chash, xtb.hashmask);
         xtb.start += n;
      }

      FUNC0(xtb.start + xtb.fsize >= xtb.valid);
      // at this point, our future size is too small, so we
      // need to flush some history. we, in fact, flush exactly
      // one window's worth of history

      {
         int flush = xtb.window;
         FUNC0(xtb.start >= flush);
         FUNC0(xtb.valid >= flush);

         // if 'pending literals' extends back into the shift region,
         // write them out
         if (xtb.start - xtb.pending_literals < flush) {
            FUNC3(xtb.buffer + xtb.start - xtb.pending_literals, xtb.pending_literals);
            xtb.pending_literals = 0;
         }

         // now shift the window
         FUNC2(xtb.buffer, xtb.buffer + flush, xtb.valid - flush);
         xtb.start -= flush;
         xtb.valid -= flush;
   
         for (i=0; i <= xtb.hashmask; ++i)
            if (xtb.chash[i] < xtb.buffer + flush)
               xtb.chash[i] = NULL;
            else
               xtb.chash[i] -= flush;
      }
      // and now that we've made room for more data, go back to the top
   }
}