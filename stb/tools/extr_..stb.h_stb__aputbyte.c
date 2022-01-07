
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int buffer; } ;
typedef TYPE_1__ stbfile ;


 int stb_arr_push (int ,int) ;

__attribute__((used)) static int stb__aputbyte(stbfile *f, int ch)
{
   stb_arr_push(f->buffer, ch);
   return 1;
}
