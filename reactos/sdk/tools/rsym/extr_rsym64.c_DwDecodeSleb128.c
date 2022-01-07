
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned long
DwDecodeSleb128(long *pResult, char *pc)
{
 long lResult = 0;
 unsigned long ulShift = 0;
 unsigned char current;
 unsigned long ulSize = 0;

 do
 {
  current = pc[ulSize];
  ulSize++;
  lResult |= (current & 0x7f) << ulShift;
  ulShift += 7;
 }
 while (current & 0x80);

 if (current & 0x40)
  lResult |= - (1 << (ulShift));

    *pResult = lResult;

 return ulSize;
}
