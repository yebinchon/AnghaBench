
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct outbuffer {int fill; size_t size; scalar_t__ data; } ;
typedef size_t ssize_t ;
typedef scalar_t__ int16_t ;


 int SHORT_SCALE ;
 int bufsizeerr ;
 int error1 (char*,int ) ;

__attribute__((used)) static void conv_s16_to_f32(struct outbuffer *buf)
{
 ssize_t i;
 int16_t *in = (int16_t*) buf->data;
 float *out = (float*) buf->data;
 size_t count = buf->fill/sizeof(int16_t);



 float scale = 1./SHORT_SCALE;

 if(buf->size < count*sizeof(float))
 {
  error1("%s", bufsizeerr);
  return;
 }


 for(i=count-1; i>=0; --i)
 out[i] = (float)in[i] * scale;

 buf->fill = count*sizeof(float);
}
