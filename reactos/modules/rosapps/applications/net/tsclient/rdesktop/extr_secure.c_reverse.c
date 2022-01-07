
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;



__attribute__((used)) static void
reverse(uint8 * p, int len)
{
 int i, j;
 uint8 temp;

 for (i = 0, j = len - 1; i < j; i++, j--)
 {
  temp = p[i];
  p[i] = p[j];
  p[j] = temp;
 }
}
