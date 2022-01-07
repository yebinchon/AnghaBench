
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__uint32 ;
typedef int stbi ;


 int get16le (int *) ;

__attribute__((used)) static stbi__uint32 get32le(stbi *s)
{
   stbi__uint32 z = get16le(s);
   return z + (get16le(s) << 16);
}
