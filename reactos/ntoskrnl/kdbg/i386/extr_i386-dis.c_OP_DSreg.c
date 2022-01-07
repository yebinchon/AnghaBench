
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PREFIX_CS ;
 int PREFIX_DS ;
 int PREFIX_ES ;
 int PREFIX_FS ;
 int PREFIX_GS ;
 int PREFIX_SS ;
 int append_seg () ;
 int prefixes ;
 int ptr_reg (int,int) ;

__attribute__((used)) static void
OP_DSreg (int code, int sizeflag)
{
  if ((prefixes
       & (PREFIX_CS
   | PREFIX_DS
   | PREFIX_SS
   | PREFIX_ES
   | PREFIX_FS
   | PREFIX_GS)) == 0)
    prefixes |= PREFIX_DS;
  append_seg ();
  ptr_reg (code, sizeflag);
}
