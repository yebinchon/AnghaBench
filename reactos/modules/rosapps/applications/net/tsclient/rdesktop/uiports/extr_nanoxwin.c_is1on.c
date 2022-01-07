
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;



__attribute__((used)) static int is1on(uint8 * data, int x, int y)
{
  int start;
  int shift;

  if (data == 0)
  {
    return 0;
  }
  start = (y * 32) / 8 + x / 8;
  shift = x % 8;
  return (data[start] & (0x80 >> shift)) == 0;
}
