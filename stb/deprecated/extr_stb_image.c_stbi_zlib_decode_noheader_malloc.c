
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* zout; char* zout_start; int * zbuffer_end; int * zbuffer; } ;
typedef TYPE_1__ zbuf ;
typedef int stbi__uint8 ;


 scalar_t__ do_zlib (TYPE_1__*,char*,int,int,int ) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;

char *stbi_zlib_decode_noheader_malloc(char const *buffer, int len, int *outlen)
{
   zbuf a;
   char *p = (char *) malloc(16384);
   if (p == ((void*)0)) return ((void*)0);
   a.zbuffer = (stbi__uint8 *) buffer;
   a.zbuffer_end = (stbi__uint8 *) buffer+len;
   if (do_zlib(&a, p, 16384, 1, 0)) {
      if (outlen) *outlen = (int) (a.zout - a.zout_start);
      return a.zout_start;
   } else {
      free(a.zout_start);
      return ((void*)0);
   }
}
