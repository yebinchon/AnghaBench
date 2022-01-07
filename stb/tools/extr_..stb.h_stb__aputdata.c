
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; } ;
typedef TYPE_1__ stbfile ;


 int memcpy (int ,void*,unsigned int) ;
 int stb_arr_addn (int ,int) ;

__attribute__((used)) static unsigned int stb__aputdata(stbfile *f, void *data, unsigned int len)
{
   memcpy(stb_arr_addn(f->buffer, (int) len), data, len);
   return len;
}
