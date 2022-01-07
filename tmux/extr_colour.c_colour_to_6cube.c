
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
colour_to_6cube(int v)
{
 if (v < 48)
  return (0);
 if (v < 114)
  return (1);
 return ((v - 35) / 40);
}
