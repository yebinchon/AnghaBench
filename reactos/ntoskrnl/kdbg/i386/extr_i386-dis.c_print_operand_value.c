
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_signed_vma ;


 scalar_t__ mode_64bit ;
 int sprintf (char*,char*,int) ;
 int sprintf_vma (char*,int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void
print_operand_value (char *buf, int hex, bfd_vma disp)
{
  if (mode_64bit)
    {
      if (hex)
 {
   char tmp[30];
   int i;
   buf[0] = '0';
   buf[1] = 'x';
   sprintf_vma (tmp, disp);
   for (i = 0; tmp[i] == '0' && tmp[i + 1]; i++);
   strcpy (buf + 2, tmp + i);
 }
      else
 {
   bfd_signed_vma v = disp;
   char tmp[30];
   int i;
   if (v < 0)
     {
       *(buf++) = '-';
       v = -disp;

       if (v < 0)
  {
    strcpy (buf, "9223372036854775808");
    return;
  }
     }
   if (!v)
     {
       strcpy (buf, "0");
       return;
     }

   i = 0;
   tmp[29] = 0;
   while (v)
     {
       tmp[28 - i] = (v % 10) + '0';
       v /= 10;
       i++;
     }
   strcpy (buf, tmp + 29 - i);
 }
    }
  else
    {
      if (hex)
 sprintf (buf, "0x%x", (unsigned int) disp);
      else
 sprintf (buf, "%d", (int) disp);
    }
}
