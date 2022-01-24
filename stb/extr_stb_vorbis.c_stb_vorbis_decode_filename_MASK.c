#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int channels; int sample_rate; } ;
typedef  TYPE_1__ stb_vorbis ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (short*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (short*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int,short*,int) ; 
 TYPE_1__* FUNC5 (char const*,int*,int /*<<< orphan*/ *) ; 

int FUNC6(const char *filename, int *channels, int *sample_rate, short **output)
{
   int data_len, offset, total, limit, error;
   short *data;
   stb_vorbis *v = FUNC5(filename, &error, NULL);
   if (v == NULL) return -1;
   limit = v->channels * 4096;
   *channels = v->channels;
   if (sample_rate)
      *sample_rate = v->sample_rate;
   offset = data_len = 0;
   total = limit;
   data = (short *) FUNC1(total * sizeof(*data));
   if (data == NULL) {
      FUNC3(v);
      return -2;
   }
   for (;;) {
      int n = FUNC4(v, v->channels, data+offset, total-offset);
      if (n == 0) break;
      data_len += n;
      offset += n * v->channels;
      if (offset + limit > total) {
         short *data2;
         total *= 2;
         data2 = (short *) FUNC2(data, total * sizeof(*data));
         if (data2 == NULL) {
            FUNC0(data);
            FUNC3(v);
            return -2;
         }
         data = data2;
      }
   }
   *output = data;
   FUNC3(v);
   return data_len;
}