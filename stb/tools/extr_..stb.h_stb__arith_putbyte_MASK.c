#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int pending_ffs; int buffered_u8; int /*<<< orphan*/  output; } ;
typedef  TYPE_1__ stb_arith ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(stb_arith *a, int byte)
{
   if (a->pending_ffs) {
      if (a->pending_ffs == -1) { // means no buffered data; encoded for fast path efficiency
         if (byte == 0xff)
            FUNC0(a->output, byte); // just write it immediately
         else {
            a->buffered_u8 = byte;
            a->pending_ffs = 0;
         }
      } else if (byte == 0xff) {
         ++a->pending_ffs;
      } else {
         int i;
         FUNC0(a->output, a->buffered_u8);
         for (i=0; i < a->pending_ffs; ++i)
            FUNC0(a->output, 0xff);
      }
   } else if (byte == 0xff) {
      ++a->pending_ffs;
   } else {
      // fast path
      FUNC0(a->output, a->buffered_u8);
      a->buffered_u8 = byte;
   }
}