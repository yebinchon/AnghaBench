
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIY_SIGNIFICAND_SIZE ;

__attribute__((used)) static int
k_comp(int n)
{




 int tmp = n + DIY_SIGNIFICAND_SIZE - 1;
 int k = (tmp * 1233) / (1 << 12);
 return tmp > 0 ? k + 1 : k;
}
