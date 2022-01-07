
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stbi__uint8 ;



__attribute__((used)) static stbi__uint8 compute_y(int r, int g, int b)
{
   return (stbi__uint8) (((r*77) + (g*150) + (29*b)) >> 8);
}
