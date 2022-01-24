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

/* Variables and functions */
#define  PLAYBACK_LEFT 130 
#define  PLAYBACK_MONO 129 
#define  PLAYBACK_RIGHT 128 
 int /*<<< orphan*/  FUNC0 (int,short*,int,float**,int,int) ; 
 int /*<<< orphan*/  FUNC1 (short*,float*,int) ; 
 int /*<<< orphan*/  FUNC2 (short*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(int buf_c, short **buffer, int b_offset, int data_c, float **data, int d_offset, int samples)
{
   int i;
   if (buf_c != data_c && buf_c <= 2 && data_c <= 6) {
      static int channel_selector[3][2] = { {0}, {PLAYBACK_MONO}, {PLAYBACK_LEFT, PLAYBACK_RIGHT} };
      for (i=0; i < buf_c; ++i)
         FUNC0(channel_selector[buf_c][i], buffer[i]+b_offset, data_c, data, d_offset, samples);
   } else {
      int limit = buf_c < data_c ? buf_c : data_c;
      for (i=0; i < limit; ++i)
         FUNC1(buffer[i]+b_offset, data[i]+d_offset, samples);
      for (   ; i < buf_c; ++i)
         FUNC2(buffer[i]+b_offset, 0, sizeof(short) * samples);
   }
}