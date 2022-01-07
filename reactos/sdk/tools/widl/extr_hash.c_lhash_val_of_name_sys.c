
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ syskind_t ;
typedef int ULONG ;
typedef scalar_t__ LPCSTR ;
typedef int LCID ;


 int LANGIDFROMLCID (int) ;
 unsigned char* Lookup_112 ;
 unsigned char* Lookup_128 ;
 unsigned char* Lookup_144 ;
 unsigned char* Lookup_16 ;
 unsigned char* Lookup_160 ;
 unsigned char* Lookup_176 ;
 unsigned char* Lookup_208 ;
 unsigned char* Lookup_224 ;
 unsigned char* Lookup_32 ;
 unsigned char* Lookup_48 ;
 unsigned char* Lookup_64 ;
 unsigned char* Lookup_80 ;
 int PRIMARYLANGID (int ) ;
 int SUBLANGID (int ) ;
 int SUBLANG_NORWEGIAN_NYNORSK ;
 scalar_t__ SYS_MAC ;
 int fprintf (int ,char*,int) ;
 int stderr ;

unsigned int lhash_val_of_name_sys( syskind_t skind, LCID lcid, LPCSTR lpStr)
{
  ULONG nOffset, nMask = skind == SYS_MAC ? 1 : 0;
  ULONG nHiWord, nLoWord = 0x0deadbee;
  const unsigned char *str = (const unsigned char *)lpStr, *pnLookup = ((void*)0);

  if (!str)
    return 0;

  switch (PRIMARYLANGID(LANGIDFROMLCID(lcid)))
  {
  default:
    fprintf(stderr, "Unknown lcid %x, treating as latin-based, please report\n", lcid);

  case 220: case 219: case 217:
  case 216: case 215: case 214:
  case 213: case 212: case 210:
  case 209: case 205: case 204:
  case 203: case 202: case 200:
  case 199: case 197: case 196:
  case 194: case 193: case 192:
  case 190: case 188: case 185:
  case 183: case 181: case 180:
  case 179: case 178: case 176:
  case 175: case 174: case 173:
  case 172: case 171: case 169:
  case 168: case 167: case 166:
  case 163: case 161: case 160:
  case 159: case 155: case 154:
  case 153: case 151: case 148:
  case 147: case 146: case 144:
  case 143: case 142: case 141:
  case 137: case 135: case 134:
  case 132: case 170: case 184:
  case 156: case 136: case 139:
  case 129: case 128: case 130:
  case 211: case 165:


  case 195:


  case 145:


  case 158:


  case 149:


  case 140:


  case 133:


  case 201:


  case 131:


  case 207:

    nOffset = 16;
    pnLookup = Lookup_16;
    break;
  case 206: case 187: case 162:
  case 152: case 150:
    nOffset = 32;
    pnLookup = Lookup_32;
    break;
  case 189:
    nOffset = 48;
    pnLookup = Lookup_48;
    break;
  case 182:
    nOffset = 64;
    pnLookup = Lookup_64;
    break;
  case 177:
    nOffset = 80;
    pnLookup = Lookup_80;
    break;
  case 208:
    nOffset = 112;
    pnLookup = Lookup_112;
    break;
  case 191:
    nOffset = 128;
    pnLookup = Lookup_128;
    break;
  case 186:
    nOffset = 144;
    pnLookup = Lookup_144;
    break;
  case 138:
    nOffset = 160;
    pnLookup = Lookup_160;
    break;
  case 164:
    if (SUBLANGID(LANGIDFROMLCID(lcid)) == SUBLANG_NORWEGIAN_NYNORSK)
    {
      nOffset = 176;
      pnLookup = Lookup_176;
    }
    else
    {
      nOffset = 16;
      pnLookup = Lookup_16;
    }
    break;
  case 218:
  case 198:
    nOffset = 208;
    pnLookup = Lookup_208;
    break;
  case 157:
    nOffset = 224;
    pnLookup = Lookup_224;
    break;
  }

  nHiWord = (nOffset | nMask) << 16;

  while (*str)
  {
    nLoWord = 37 * nLoWord + pnLookup[*str > 0x7f && nMask ? *str + 0x80 : *str];
    str++;
  }

  nLoWord = (nLoWord % 65599) & 0xffff;

  return nHiWord | nLoWord;
}
