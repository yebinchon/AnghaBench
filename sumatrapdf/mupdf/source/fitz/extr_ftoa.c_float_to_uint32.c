
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
float_to_uint32(float d)
{
 union
 {
  float d;
  uint32_t n;
 } tmp;
 tmp.d = d;
 return tmp.n;
}
