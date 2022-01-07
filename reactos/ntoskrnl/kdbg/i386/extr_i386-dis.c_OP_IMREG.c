
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DFLAG ;
 char* INTERNAL_DISASSEMBLER_ERROR ;
 int PREFIX_DATA ;
 int REX_MODE64 ;
 int USED_REX (int) ;
 int intel_syntax ;
 char** names16 ;
 char** names32 ;
 char** names64 ;
 char** names8 ;
 char** names8rex ;
 char** names_seg ;
 int oappend (char const*) ;
 int prefixes ;
 int rex ;



 int used_prefixes ;

__attribute__((used)) static void
OP_IMREG (int code, int sizeflag)
{
  const char *s;

  switch (code)
    {
    case 131:
      if (intel_syntax)
 s = "[dx]";
      else
 s = "(%dx)";
      break;
    case 156: case 148: case 143: case 152:
    case 129: case 153: case 130: case 146:
      s = names16[code - 156];
      break;
    case 134: case 128: case 149:
    case 144: case 133: case 132:
      s = names_seg[code - 134];
      break;
    case 157: case 158: case 150: case 151:
    case 145: case 147: case 154: case 155:
      USED_REX (0);
      if (rex)
 s = names8rex[code - 157];
      else
 s = names8[code - 157];
      break;
    case 142: case 139: case 137: case 140:
    case 135: case 141: case 136: case 138:
      USED_REX (REX_MODE64);
      if (rex & REX_MODE64)
 s = names64[code - 142];
      else if (sizeflag & DFLAG)
 s = names32[code - 142];
      else
 s = names16[code - 142];
      used_prefixes |= (prefixes & PREFIX_DATA);
      break;
    default:
      s = INTERNAL_DISASSEMBLER_ERROR;
      break;
    }
  oappend (s);
}
