
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int various; } ;
typedef TYPE_1__ stbfile ;


 TYPE_1__* stb_open_inbuffer (void*,unsigned int) ;

stbfile *stb_open_inbuffer_free(void *buffer, unsigned int len)
{
   stbfile *z = stb_open_inbuffer(buffer, len);
   if (z)
      z->various = 1;
   return z;
}
