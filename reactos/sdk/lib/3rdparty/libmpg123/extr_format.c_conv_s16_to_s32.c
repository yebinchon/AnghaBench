
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct outbuffer {int fill; size_t size; scalar_t__ data; } ;
typedef size_t ssize_t ;
typedef int int32_t ;
typedef int int16_t ;


 int S32_RESCALE ;
 int bufsizeerr ;
 int error1 (char*,int ) ;

__attribute__((used)) static void conv_s16_to_s32(struct outbuffer *buf)
{
 ssize_t i;
 int16_t *in = (int16_t*) buf->data;
 int32_t *out = (int32_t*) buf->data;
 size_t count = buf->fill/sizeof(int16_t);

 if(buf->size < count*sizeof(int32_t))
 {
  error1("%s", bufsizeerr);
  return;
 }


 for(i=count-1; i>=0; --i)
 {
  out[i] = in[i];

  out[i] *= S32_RESCALE;
 }

 buf->fill = count*sizeof(int32_t);
}
