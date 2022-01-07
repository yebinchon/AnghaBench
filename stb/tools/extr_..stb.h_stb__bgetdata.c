
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ indata; scalar_t__ inend; } ;
typedef TYPE_1__ stbfile ;


 int memcpy (void*,scalar_t__,unsigned int) ;

__attribute__((used)) static unsigned int stb__bgetdata(stbfile *s, void *buffer, unsigned int len)
{
   if (s->indata + len > s->inend)
      len = (unsigned int) (s->inend - s->indata);
   memcpy(buffer, s->indata, len);
   s->indata += len;
   return len;
}
