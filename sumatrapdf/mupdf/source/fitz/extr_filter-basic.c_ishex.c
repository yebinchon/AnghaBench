
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int ishex(int a)
{
 return (a >= 'A' && a <= 'F') ||
  (a >= 'a' && a <= 'f') ||
  (a >= '0' && a <= '9');
}
