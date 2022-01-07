
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fz_mini (int,int) ;

__attribute__((used)) static inline int fz_darken_byte(int b, int s)
{
 return fz_mini(b, s);
}
