
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG ;


 int APICRead (int) ;
 int DbgPrint (char*) ;

__attribute__((used)) static VOID APICDumpBit(ULONG base)
{
 ULONG v, i, j;

 DbgPrint("0123456789abcdef0123456789abcdef\n");
 for (i = 0; i < 8; i++)
 {
  v = APICRead(base + i*0x10);
  for (j = 0; j < 32; j++)
  {
   if (v & (1<<j))
    DbgPrint("1");
   else
    DbgPrint("0");
  }
  DbgPrint("\n");
 }
}
