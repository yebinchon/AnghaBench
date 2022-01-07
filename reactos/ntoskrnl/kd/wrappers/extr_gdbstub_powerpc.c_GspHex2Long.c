
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* PLONG ;
typedef scalar_t__* PCHAR ;
typedef int LONG ;


 int HexValue (scalar_t__) ;

LONG
GspHex2Long(PCHAR *Address,
  PLONG Value)
{
  LONG NumChars = 0;
  LONG Hex;

  *Value = 0;

  while (**Address)
    {
      Hex = HexValue(**Address);
      if (Hex >= 0)
        {
          *Value = (*Value << 4) | Hex;
          NumChars++;
        }
      else
        {
          break;
        }

      (*Address)++;
    }

  return NumChars;
}
