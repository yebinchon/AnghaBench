
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DFLAG ;
 char* INTERNAL_DISASSEMBLER_ERROR ;
 int PREFIX_DATA ;
 int REX_EXTZ ;
 int REX_MODE64 ;
 int USED_REX (int) ;
 int intel_syntax ;
 int mode_64bit ;
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
OP_REG (int code, int sizeflag)
{
  const char *s;
  int add = 0;
  USED_REX (REX_EXTZ);
  if (rex & REX_EXTZ)
    add = 8;

  switch (code)
    {
    case 139:
      if (intel_syntax)
 s = "[dx]";
      else
 s = "(%dx)";
      break;
    case 164: case 156: case 151: case 160:
    case 129: case 161: case 130: case 154:
      s = names16[code - 164 + add];
      break;
    case 142: case 128: case 157:
    case 152: case 141: case 140:
      s = names_seg[code - 142 + add];
      break;
    case 165: case 166: case 158: case 159:
    case 153: case 155: case 162: case 163:
      USED_REX (0);
      if (rex)
 s = names8rex[code - 165 + add];
      else
 s = names8[code - 165];
      break;
    case 138: case 135: case 133: case 136:
    case 131: case 137: case 132: case 134:
      if (mode_64bit)
 {
   s = names64[code - 138 + add];
   break;
 }
      code += 150 - 138;

    case 150: case 147: case 145: case 148:
    case 143: case 149: case 144: case 146:
      USED_REX (REX_MODE64);
      if (rex & REX_MODE64)
 s = names64[code - 150 + add];
      else if (sizeflag & DFLAG)
 s = names32[code - 150 + add];
      else
 s = names16[code - 150 + add];
      used_prefixes |= (prefixes & PREFIX_DATA);
      break;
    default:
      s = INTERNAL_DISASSEMBLER_ERROR;
      break;
    }
  oappend (s);
}
