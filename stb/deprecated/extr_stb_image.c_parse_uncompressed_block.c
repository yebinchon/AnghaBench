
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int num_bits; int code_buffer; scalar_t__ zbuffer; scalar_t__ zbuffer_end; scalar_t__ zout; scalar_t__ zout_end; } ;
typedef TYPE_1__ zbuf ;
typedef int stbi__uint8 ;


 int assert (int) ;
 int e (char*,char*) ;
 int expand (TYPE_1__*,int) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 scalar_t__ zget8 (TYPE_1__*) ;
 int zreceive (TYPE_1__*,int) ;

__attribute__((used)) static int parse_uncompressed_block(zbuf *a)
{
   stbi__uint8 header[4];
   int len,nlen,k;
   if (a->num_bits & 7)
      zreceive(a, a->num_bits & 7);

   k = 0;
   while (a->num_bits > 0) {
      header[k++] = (stbi__uint8) (a->code_buffer & 255);
      a->code_buffer >>= 8;
      a->num_bits -= 8;
   }
   assert(a->num_bits == 0);

   while (k < 4)
      header[k++] = (stbi__uint8) zget8(a);
   len = header[1] * 256 + header[0];
   nlen = header[3] * 256 + header[2];
   if (nlen != (len ^ 0xffff)) return e("zlib corrupt","Corrupt PNG");
   if (a->zbuffer + len > a->zbuffer_end) return e("read past buffer","Corrupt PNG");
   if (a->zout + len > a->zout_end)
      if (!expand(a, len)) return 0;
   memcpy(a->zout, a->zbuffer, len);
   a->zbuffer += len;
   a->zout += len;
   return 1;
}
