
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
calc_pow(int base, int n) {
 int r;
 if (n == 0)
  return 1;
 r = calc_pow(base * base , n / 2);
 if (n&1) {
  r *= base;
 }
 return r;
}
