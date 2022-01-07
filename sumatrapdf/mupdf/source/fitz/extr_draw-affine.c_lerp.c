
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PREC ;

__attribute__((used)) static inline int lerp(int a, int b, int t)
{
 return a + (((b - a) * t) >> PREC);
}
