
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* buffer; unsigned char* indata; unsigned char* inend; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ stbfile ;


 scalar_t__ malloc (int) ;
 int stb__bclose ;
 int stb__bgetbyte ;
 int stb__bgetdata ;
 int stb__bsize ;
 int stb__btell ;
 int stb__nobackpatch ;
 int stb__noputbyte ;
 int stb__noputdata ;

stbfile *stb_open_inbuffer(void *buffer, unsigned int len)
{
   stbfile m = { stb__bgetbyte, stb__bgetdata,
                 stb__noputbyte, stb__noputdata,
                 stb__bsize, stb__btell, stb__nobackpatch, stb__bclose };
   stbfile *z = (stbfile *) malloc(sizeof(*z));
   if (z) {
      *z = m;
      z->buffer = (unsigned char *) buffer;
      z->indata = z->buffer;
      z->inend = z->indata + len;
   }
   return z;
}
