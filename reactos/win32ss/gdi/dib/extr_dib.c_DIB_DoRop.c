
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
ULONG
DIB_DoRop(ULONG Rop, ULONG Dest, ULONG Source, ULONG Pattern)
{
  ULONG ResultNibble;
  ULONG Result = 0;
  ULONG i;
static const ULONG ExpandDest[16] =
    {
      0x55555555 ,
      0x555555AA ,
      0x5555AA55 ,
      0x5555AAAA ,
      0x55AA5555 ,
      0x55AA55AA ,
      0x55AAAA55 ,
      0x55AAAAAA ,
      0xAA555555 ,
      0xAA5555AA ,
      0xAA55AA55 ,
      0xAA55AAAA ,
      0xAAAA5555 ,
      0xAAAA55AA ,
      0xAAAAAA55 ,
      0xAAAAAAAA ,
    };
  static const ULONG ExpandSource[16] =
    {
      0x33333333 ,
      0x333333CC ,
      0x3333CC33 ,
      0x3333CCCC ,
      0x33CC3333 ,
      0x33CC33CC ,
      0x33CCCC33 ,
      0x33CCCCCC ,
      0xCC333333 ,
      0xCC3333CC ,
      0xCC33CC33 ,
      0xCC33CCCC ,
      0xCCCC3333 ,
      0xCCCC33CC ,
      0xCCCCCC33 ,
      0xCCCCCCCC ,
    };
  static const ULONG ExpandPattern[16] =
    {
      0x0F0F0F0F ,
      0x0F0F0FF0 ,
      0x0F0FF00F ,
      0x0F0FF0F0 ,
      0x0FF00F0F ,
      0x0FF00FF0 ,
      0x0FF0F00F ,
      0x0FF0F0F0 ,
      0xF00F0F0F ,
      0xF00F0FF0 ,
      0xF00FF00F ,
      0xF00FF0F0 ,
      0xF0F00F0F ,
      0xF0F00FF0 ,
      0xF0F0F00F ,
      0xF0F0F0F0 ,
    };

    Rop &=0xFF;
    switch(Rop)
    {


        case 139: return(Dest);
        case 143: return(0);
        case 137: return(~(Dest | Source));
        case 138: return(~Source);
        case 131: return((~Dest) & Source);
        case 142: return(~Dest);
        case 135: return(Dest ^ Pattern);
        case 130: return(Dest ^ Source);
        case 133: return(Dest & Source);
        case 140: return(Dest | (~Source));
        case 129: return(Dest | Source);
        case 141: return(Source & Pattern);
        case 132: return(Source);
        case 136: return(Pattern);
        case 134: return(Dest | (~Source) | Pattern);
        case 128: return(0xFFFFFFFF);
    }


  Rop |= (Rop << 24) | (Rop << 16) | (Rop << 8);

  Result = 0;
  for (i = 0; i < 8; i++)
  {
    ResultNibble = Rop & ExpandDest[Dest & 0xF] & ExpandSource[Source & 0xF] & ExpandPattern[Pattern & 0xF];
    Result |= (((ResultNibble & 0xFF000000) ? 0x8 : 0x0) | ((ResultNibble & 0x00FF0000) ? 0x4 : 0x0) |
    ((ResultNibble & 0x0000FF00) ? 0x2 : 0x0) | ((ResultNibble & 0x000000FF) ? 0x1 : 0x0)) << (i * 4);
    Dest >>= 4;
    Source >>= 4;
    Pattern >>= 4;
  }
  return(Result);
}
