
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef char* PCHAR ;
typedef char CHAR ;


 int sprintf (char*,char*,int,int) ;

PCHAR
HaliMPFamily(ULONG Family,
      ULONG Model)
{
   static CHAR str[64];
   static PCHAR CPUs[] =
   {
      "80486DX", "80486DX",
      "80486SX", "80486DX/2 or 80487",
      "80486SL", "Intel5X2(tm)",
      "Unknown", "Unknown",
      "80486DX/4"
   };
   if (Family == 0x6)
      return ("Pentium(tm) Pro");
   if (Family == 0x5)
      return ("Pentium(tm)");
   if (Family == 0x0F && Model == 0x0F)
      return("Special controller");
   if (Family == 0x0F && Model == 0x00)
      return("Pentium 4(tm)");
   if (Family == 0x04 && Model < 9)
      return CPUs[Model];
   sprintf(str, "Unknown CPU with family ID %ld and model ID %ld", Family, Model);
   return str;
}
