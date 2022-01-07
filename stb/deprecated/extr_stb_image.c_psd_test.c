
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 int get32 (int *) ;

__attribute__((used)) static int psd_test(stbi *s)
{
   if (get32(s) != 0x38425053) return 0;
   else return 1;
}
