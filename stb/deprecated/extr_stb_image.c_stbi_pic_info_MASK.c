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
typedef  int /*<<< orphan*/  stbi ;
struct TYPE_2__ {int size; int channel; void* type; } ;
typedef  TYPE_1__ pic_packet_t ;
typedef  int /*<<< orphan*/  packets ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(stbi *s, int *x, int *y, int *comp)
{
   int act_comp=0,num_packets=0,chained;
   pic_packet_t packets[10];

   FUNC4(s, 92);

   *x = FUNC1(s);
   *y = FUNC1(s);
   if (FUNC0(s))  return 0;
   if ( (*x) != 0 && (1 << 28) / (*x) < (*y)) {
       FUNC5( s );
       return 0;
   }

   FUNC4(s, 8);

   do {
      pic_packet_t *packet;

      if (num_packets==sizeof(packets)/sizeof(packets[0]))
         return 0;

      packet = &packets[num_packets++];
      chained = FUNC2(s);
      packet->size    = FUNC3(s);
      packet->type    = FUNC3(s);
      packet->channel = FUNC3(s);
      act_comp |= packet->channel;

      if (FUNC0(s)) {
          FUNC5( s );
          return 0;
      }
      if (packet->size != 8) {
          FUNC5( s );
          return 0;
      }
   } while (chained);

   *comp = (act_comp & 0x10 ? 4 : 3);

   return 1;
}