
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODRM_CHECK ;
 int OP_E (int,int) ;
 int PREFIX_DATA ;
 int REX_EXTZ ;
 int USED_REX (int) ;
 int codep ;
 scalar_t__ intel_syntax ;
 int mod ;
 int oappend (scalar_t__) ;
 int prefixes ;
 int rex ;
 int rm ;
 scalar_t__ scratchbuf ;
 int sprintf (scalar_t__,char*,int) ;
 int used_prefixes ;

__attribute__((used)) static void
OP_EM (int bytemode, int sizeflag)
{
  int add = 0;
  if (mod != 3)
    {
      OP_E (bytemode, sizeflag);
      return;
    }
  USED_REX (REX_EXTZ);
  if (rex & REX_EXTZ)
    add = 8;


  MODRM_CHECK;
  codep++;
  used_prefixes |= (prefixes & PREFIX_DATA);
  if (prefixes & PREFIX_DATA)
    sprintf (scratchbuf, "%%xmm%d", rm + add);
  else
    sprintf (scratchbuf, "%%mm%d", rm + add);
  oappend (scratchbuf + intel_syntax);
}
