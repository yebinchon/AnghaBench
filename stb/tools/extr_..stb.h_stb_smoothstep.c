
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
float stb_smoothstep(float t)
{
   return (3 - 2*t)*(t*t);
}
