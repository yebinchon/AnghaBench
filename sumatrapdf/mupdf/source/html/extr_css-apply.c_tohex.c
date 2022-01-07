
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int tohex(int c)
{
 if (c - '0' < 10)
  return c - '0';
 return (c | 32) - 'a' + 10;
}
