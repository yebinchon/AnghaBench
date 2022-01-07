
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lerp (int,int,int) ;

__attribute__((used)) static inline int bilerp(int a, int b, int c, int d, int u, int v)
{
 return lerp(lerp(a, b, u), lerp(c, d, u), v);
}
