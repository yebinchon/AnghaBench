#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,float,int) ; 
 int** channel_position ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (float*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  temp ; 

__attribute__((used)) static void FUNC4(int mask, short *output, int num_c, float **data, int d_offset, int len)
{
   #define BUFFER_SIZE  32
   float buffer[BUFFER_SIZE];
   int i,j,o,n = BUFFER_SIZE;
   FUNC2();
   for (o = 0; o < len; o += BUFFER_SIZE) {
      FUNC3(buffer, 0, sizeof(buffer));
      if (o + n > len) n = len - o;
      for (j=0; j < num_c; ++j) {
         if (channel_position[num_c][j] & mask) {
            for (i=0; i < n; ++i)
               buffer[i] += data[j][d_offset+o+i];
         }
      }
      for (i=0; i < n; ++i) {
         FUNC0(temp);
         int v = FUNC1(temp,buffer[i],15);
         if ((unsigned int) (v + 32768) > 65535)
            v = v < 0 ? -32768 : 32767;
         output[o+i] = v;
      }
   }
}