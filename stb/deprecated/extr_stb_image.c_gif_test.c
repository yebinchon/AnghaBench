
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 char get8 (int *) ;

__attribute__((used)) static int gif_test(stbi *s)
{
   int sz;
   if (get8(s) != 'G' || get8(s) != 'I' || get8(s) != 'F' || get8(s) != '8') return 0;
   sz = get8(s);
   if (sz != '9' && sz != '7') return 0;
   if (get8(s) != 'a') return 0;
   return 1;
}
