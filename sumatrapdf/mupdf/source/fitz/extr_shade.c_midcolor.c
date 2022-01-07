
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void midcolor(float *c, float *c1, float *c2, int n)
{
 int i;
 for (i = 0; i < n; i++)
  c[i] = (c1[i] + c2[i]) * 0.5f;
}
