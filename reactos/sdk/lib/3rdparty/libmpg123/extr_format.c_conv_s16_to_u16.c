
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct outbuffer {int fill; scalar_t__ data; } ;
typedef scalar_t__ int16_t ;



__attribute__((used)) static void conv_s16_to_u16(struct outbuffer *buf)
{
 size_t i;
 int16_t *ssamples = (int16_t*) buf->data;
 uint16_t *usamples = (uint16_t*)buf->data;
 size_t count = buf->fill/sizeof(int16_t);

 for(i=0; i<count; ++i)
 {
  long tmp = (long)ssamples[i]+32768;
  usamples[i] = (uint16_t)tmp;
 }
}
