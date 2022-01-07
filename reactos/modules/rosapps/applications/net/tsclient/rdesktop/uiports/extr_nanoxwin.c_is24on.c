
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8 ;



__attribute__((used)) static int is24on(uint8 * data, int x, int y)
{
  uint8 r, g, b;
  int start;

  if (data == 0)
  {
    return 0;
  }
  start = y * 32 * 3 + x * 3;
  r = data[start];
  g = data[start + 1];
  b = data[start + 2];
  return !((r == 0) && (g == 0) && (b == 0));
}
