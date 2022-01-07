
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__uint32 ;
typedef int stbi ;


 int get16 (int *) ;

__attribute__((used)) static stbi__uint32 get32(stbi *s)
{
   stbi__uint32 z = get16(s);
   return (z << 16) + get16(s);
}
