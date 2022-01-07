
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputc (unsigned char,int ) ;
 int stb__outbytes ;
 int stb__outfile ;

__attribute__((used)) static void stb__write(unsigned char v)
{
   fputc(v, stb__outfile);
   ++stb__outbytes;
}
