
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PCHAR ;
typedef int LONG ;


 int FALSE ;
 int GspMem2Hex (int ,int ,int,int ) ;

VOID
GspLong2Hex(PCHAR *Address,
  LONG Value)
{
  LONG Save;

  Save = (((Value >> 0) & 0xff) << 24) |
         (((Value >> 8) & 0xff) << 16) |
         (((Value >> 16) & 0xff) << 8) |
         (((Value >> 24) & 0xff) << 0);
  *Address = GspMem2Hex((PCHAR) &Save, *Address, 4, FALSE);
}
