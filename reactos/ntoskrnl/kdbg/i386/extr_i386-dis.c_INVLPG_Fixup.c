
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OP_E (int,int) ;
 int* codep ;
 char* obuf ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
INVLPG_Fixup (int bytemode, int sizeflag)
{
  if (*codep == 0xf8)
    {
      char *p = obuf + strlen (obuf);


      strcpy (p - 6, "swapgs");
      codep++;
    }
  else
    OP_E (bytemode, sizeflag);
}
