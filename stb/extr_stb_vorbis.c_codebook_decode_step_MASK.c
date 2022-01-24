#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vorb ;
struct TYPE_6__ {int dimensions; int lookup_type; int lookup_values; scalar_t__ sequence_p; } ;
typedef  TYPE_1__ Codebook ;

/* Variables and functions */
 float FUNC0 (TYPE_1__*) ; 
 float FUNC1 (TYPE_1__*,int) ; 
 int FALSE ; 
 int TRUE ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(vorb *f, Codebook *c, float *output, int len, int step)
{
   int i,z = FUNC2(f,c);
   float last = FUNC0(c);
   if (z < 0) return FALSE;
   if (len > c->dimensions) len = c->dimensions;

#ifdef STB_VORBIS_DIVIDES_IN_CODEBOOK
   if (c->lookup_type == 1) {
      int div = 1;
      for (i=0; i < len; ++i) {
         int off = (z / div) % c->lookup_values;
         float val = CODEBOOK_ELEMENT_FAST(c,off) + last;
         output[i*step] += val;
         if (c->sequence_p) last = val;
         div *= c->lookup_values;
      }
      return TRUE;
   }
#endif

   z *= c->dimensions;
   for (i=0; i < len; ++i) {
      float val = FUNC1(c,z+i) + last;
      output[i*step] += val;
      if (c->sequence_p) last = val;
   }

   return TRUE;
}