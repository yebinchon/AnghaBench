
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DFLAG ;
 int INTERNAL_DISASSEMBLER_ERROR ;
 int PREFIX_DATA ;
 int REX_EXTX ;
 int REX_MODE64 ;
 int USED_REX (int) ;


 int * names16 ;
 int * names32 ;
 int * names64 ;
 int * names8 ;
 int * names8rex ;
 int oappend (int ) ;
 int prefixes ;

 int reg ;
 int rex ;
 int used_prefixes ;



__attribute__((used)) static void
OP_G (int bytemode, int sizeflag)
{
  int add = 0;
  USED_REX (REX_EXTX);
  if (rex & REX_EXTX)
    add += 8;
  switch (bytemode)
    {
    case 132:
      USED_REX (0);
      if (rex)
 oappend (names8rex[reg + add]);
      else
 oappend (names8[reg + add]);
      break;
    case 128:
      oappend (names16[reg + add]);
      break;
    case 131:
      oappend (names32[reg + add]);
      break;
    case 130:
      oappend (names64[reg + add]);
      break;
    case 129:
      USED_REX (REX_MODE64);
      if (rex & REX_MODE64)
 oappend (names64[reg + add]);
      else if (sizeflag & DFLAG)
 oappend (names32[reg + add]);
      else
 oappend (names16[reg + add]);
      used_prefixes |= (prefixes & PREFIX_DATA);
      break;
    default:
      oappend (INTERNAL_DISASSEMBLER_ERROR);
      break;
    }
}
