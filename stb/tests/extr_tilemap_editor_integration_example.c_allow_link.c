
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_endpoint ;
 int O_lever ;
 int is_platform (short*) ;

__attribute__((used)) static int allow_link(short *src, short *dest)
{
   if (is_platform(src))
      return dest[1] == 256+O_lever;
   if (src[1] == 256+O_endpoint)
      return is_platform(dest);
   return 0;
}
