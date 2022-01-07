
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int previous_length; int channels; float** channel_buffers; float** previous_window; int samples_output; } ;
typedef TYPE_1__ stb_vorbis ;


 float* get_window (TYPE_1__*,int) ;

__attribute__((used)) static int vorbis_finish_frame(stb_vorbis *f, int len, int left, int right)
{
   int prev,i,j;
   if (f->previous_length) {
      int i,j, n = f->previous_length;
      float *w = get_window(f, n);
      if (w == ((void*)0)) return 0;
      for (i=0; i < f->channels; ++i) {
         for (j=0; j < n; ++j)
            f->channel_buffers[i][left+j] =
               f->channel_buffers[i][left+j]*w[ j] +
               f->previous_window[i][ j]*w[n-1-j];
      }
   }

   prev = f->previous_length;


   f->previous_length = len - right;







   for (i=0; i < f->channels; ++i)
      for (j=0; right+j < len; ++j)
         f->previous_window[i][j] = f->channel_buffers[i][right+j];

   if (!prev)



      return 0;


   if (len < right) right = len;

   f->samples_output += right-left;

   return right - left;
}
