
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__ UINT ;


 int* Tbl ;

WCHAR ff_convert (
 WCHAR chr,
 UINT dir
)
{
 WCHAR c;


 if (chr < 0x80) {
  c = chr;

 } else {
  if (dir) {
   c = (chr >= 0x100) ? 0 : Tbl[chr - 0x80];

  } else {
   for (c = 0; c < 0x80; c++) {
    if (chr == Tbl[c]) break;
   }
   c = (c + 0x80) & 0xFF;
  }
 }

 return c;
}
