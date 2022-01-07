
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi ;


 int get8 (int *) ;

__attribute__((used)) static int get16(stbi *s)
{
   int z = get8(s);
   return (z << 8) + get8(s);
}
