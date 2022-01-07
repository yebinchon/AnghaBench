
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__uint8 ;
typedef int stbi ;


 int get8 (int *) ;

__attribute__((used)) static stbi__uint8 get8u(stbi *s)
{
   return (stbi__uint8) get8(s);
}
