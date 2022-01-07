
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char** ptr; int member_7; int member_6; int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ stbfile ;


 scalar_t__ malloc (int) ;
 int stb__abackpatch ;
 int stb__aclose ;
 int stb__aputbyte ;
 int stb__aputdata ;
 int stb__asize ;
 int stb__nogetbyte ;
 int stb__nogetdata ;

stbfile *stb_open_outbuffer(unsigned char **update_on_close)
{
   stbfile m = { stb__nogetbyte, stb__nogetdata,
                 stb__aputbyte, stb__aputdata,
                 stb__asize, stb__asize, stb__abackpatch, stb__aclose };
   stbfile *z = (stbfile *) malloc(sizeof(*z));
   if (z) {
      z->ptr = update_on_close;
      *z = m;
   }
   return z;
}
