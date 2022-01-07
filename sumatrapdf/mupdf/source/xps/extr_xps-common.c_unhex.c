
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int unhex(int a)
{
 if (a >= 'A' && a <= 'F') return a - 'A' + 0xA;
 if (a >= 'a' && a <= 'f') return a - 'a' + 0xA;
 if (a >= '0' && a <= '9') return a - '0';
 return 0;
}
