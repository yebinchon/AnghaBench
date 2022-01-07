
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int code; int output; } ;
typedef TYPE_1__ stb_arith ;


 int stb_getc (int ) ;

__attribute__((used)) static void stb__renorm_decoder(stb_arith *a)
{
   int c = stb_getc(a->output);
   a->code = (a->code << 8) + (c >= 0 ? c : 0);
}
