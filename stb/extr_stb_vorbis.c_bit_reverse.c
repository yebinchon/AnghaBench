
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int bit_reverse(unsigned int n)
{
  n = ((n & 0xAAAAAAAA) >> 1) | ((n & 0x55555555) << 1);
  n = ((n & 0xCCCCCCCC) >> 2) | ((n & 0x33333333) << 2);
  n = ((n & 0xF0F0F0F0) >> 4) | ((n & 0x0F0F0F0F) << 4);
  n = ((n & 0xFF00FF00) >> 8) | ((n & 0x00FF00FF) << 8);
  return (n >> 16) | (n << 16);
}
