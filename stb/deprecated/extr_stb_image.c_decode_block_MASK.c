#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* img_comp; } ;
typedef  TYPE_2__ jpeg ;
typedef  int /*<<< orphan*/  huffman ;
typedef  int /*<<< orphan*/  data ;
struct TYPE_6__ {int dc_pred; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 size_t* dezigzag ; 
 int FUNC1 (char*,char*) ; 
 int FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (short*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(jpeg *j, short data[64], huffman *hdc, huffman *hac, int b)
{
   int diff,dc,k;
   int t = FUNC0(j, hdc);
   if (t < 0) return FUNC1("bad huffman code","Corrupt JPEG");

   // 0 all the ac values now so we can do it 32-bits at a time
   FUNC3(data,0,64*sizeof(data[0]));

   diff = t ? FUNC2(j, t) : 0;
   dc = j->img_comp[b].dc_pred + diff;
   j->img_comp[b].dc_pred = dc;
   data[0] = (short) dc;

   // decode AC components, see JPEG spec
   k = 1;
   do {
      int r,s;
      int rs = FUNC0(j, hac);
      if (rs < 0) return FUNC1("bad huffman code","Corrupt JPEG");
      s = rs & 15;
      r = rs >> 4;
      if (s == 0) {
         if (rs != 0xf0) break; // end block
         k += 16;
      } else {
         k += r;
         // decode into unzigzag'd location
         data[dezigzag[k++]] = (short) FUNC2(j,s);
      }
   } while (k < 64);
   return 1;
}