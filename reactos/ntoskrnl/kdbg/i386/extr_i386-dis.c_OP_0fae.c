
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BadOp () ;
 int OP_E (int,int) ;
 int mod ;
 int obuf ;
 int reg ;
 scalar_t__ rm ;
 int strcpy (int,char*) ;
 int strlen (int) ;

__attribute__((used)) static void
OP_0fae (int bytemode, int sizeflag)
{
  if (mod == 3)
    {
      if (reg == 7)
 strcpy (obuf + strlen (obuf) - sizeof ("clflush") + 1, "sfence");

      if (reg < 5 || rm != 0)
 {
   BadOp ();
   return;
 }
    }
  else if (reg != 7)
    {
      BadOp ();
      return;
    }

  OP_E (bytemode, sizeflag);
}
