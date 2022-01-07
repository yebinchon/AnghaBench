
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int isbigendian(void)
{
 union { int i; char c[sizeof(int)]; } u = {1};
 return u.c[0] != 1;
}
