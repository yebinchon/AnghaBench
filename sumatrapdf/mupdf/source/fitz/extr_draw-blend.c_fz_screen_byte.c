
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fz_mul255 (int,int) ;

__attribute__((used)) static inline int fz_screen_byte(int b, int s)
{
 return b + s - fz_mul255(b, s);
}
