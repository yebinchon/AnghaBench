
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int
cdiv (int a, int b)
{
  return (a + b - 1) / b;
}
