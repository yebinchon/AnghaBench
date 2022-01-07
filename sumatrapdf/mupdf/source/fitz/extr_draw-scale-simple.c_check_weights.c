
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* index; int patch_l; } ;
typedef TYPE_1__ fz_weights ;



__attribute__((used)) static void
check_weights(fz_weights *weights, int j, int w, float x, float wf)
{
 int idx, len;
 int sum = 0;
 int max = -256;
 int maxidx = 0;
 int i;

 idx = weights->index[j - weights->patch_l];
 idx++;
 len = weights->index[idx++];

 for(i=0; i < len; i++)
 {
  int v = weights->index[idx++];
  sum += v;
  if (v > max)
  {
   max = v;
   maxidx = idx;
  }
 }


 if (((j != 0) && (j != w-1)) || (sum > 256))
  weights->index[maxidx-1] += 256-sum;


 else if ((j == 0) && (x < 0.0001f) && (sum != 256))
  weights->index[maxidx-1] += 256-sum;


 else if ((j == w-1) && (w - wf < 0.0001f) && (sum != 256))
  weights->index[maxidx-1] += 256-sum;
}
