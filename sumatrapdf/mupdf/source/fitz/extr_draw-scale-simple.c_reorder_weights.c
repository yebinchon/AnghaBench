
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* index; int patch_l; int max_len; } ;
typedef TYPE_1__ fz_weights ;


 int assert (int) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void
reorder_weights(fz_weights *weights, int j, int src_w)
{
 int idx = weights->index[j - weights->patch_l];
 int min = weights->index[idx++];
 int len = weights->index[idx++];
 int max = weights->max_len;
 int tmp = idx+max;
 int i, off;


 memcpy(&weights->index[tmp], &weights->index[idx], sizeof(int)*len);


 assert(len <= max);
 assert(min+len <= src_w);
 off = 0;
 if (len < max)
 {
  memset(&weights->index[tmp+len], 0, sizeof(int)*(max-len));
  len = max;
  if (min + len > src_w)
  {
   off = min + len - src_w;
   min = src_w - len;
   weights->index[idx-2] = min;
  }
  weights->index[idx-1] = len;
 }


 for (i = 0; i < len; i++)
 {
  weights->index[idx+((min+i+off) % max)] = weights->index[tmp+i];
 }
}
