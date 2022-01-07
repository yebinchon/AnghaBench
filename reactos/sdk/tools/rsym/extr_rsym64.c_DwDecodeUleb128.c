
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned long
DwDecodeUleb128(unsigned long *pResult, char *pc)
{
 unsigned long ulResult = 0;
 unsigned long ulShift = 0;
 unsigned char current;
 unsigned long ulSize = 0;

 do
 {
  current = pc[ulSize];
  ulSize++;
  ulResult |= (current & 0x7f) << ulShift;
  ulShift += 7;
 }
 while (current & 0x80);

    *pResult = ulResult;
 return ulSize;
}
