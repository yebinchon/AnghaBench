
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline float fung(float x)
{
 if (x >= 6.0f / 29.0f)
  return x * x * x;
 return (108.0f / 841.0f) * (x - (4.0f / 29.0f));
}
