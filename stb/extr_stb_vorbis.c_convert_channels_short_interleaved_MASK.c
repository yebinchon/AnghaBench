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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,float,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (short*,int,float**,int,int) ; 
 int /*<<< orphan*/  temp ; 

__attribute__((used)) static void FUNC5(int buf_c, short *buffer, int data_c, float **data, int d_offset, int len)
{
   int i;
   FUNC3();
   if (buf_c != data_c && buf_c <= 2 && data_c <= 6) {
      FUNC2(buf_c == 2);
      for (i=0; i < buf_c; ++i)
         FUNC4(buffer, data_c, data, d_offset, len);
   } else {
      int limit = buf_c < data_c ? buf_c : data_c;
      int j;
      for (j=0; j < len; ++j) {
         for (i=0; i < limit; ++i) {
            FUNC0(temp);
            float f = data[i][d_offset+j];
            int v = FUNC1(temp, f,15);//data[i][d_offset+j],15);
            if ((unsigned int) (v + 32768) > 65535)
               v = v < 0 ? -32768 : 32767;
            *buffer++ = v;
         }
         for (   ; i < buf_c; ++i)
            *buffer++ = 0;
      }
   }
}