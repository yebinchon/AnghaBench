
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stb_uint ;


 int stb_out (int) ;

__attribute__((used)) static void stb_out2(stb_uint v)
{
   stb_out(v >> 8);
   stb_out(v);
}
