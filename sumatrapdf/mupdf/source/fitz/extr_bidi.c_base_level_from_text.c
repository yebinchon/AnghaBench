
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_bidi_level ;
typedef int fz_bidi_chartype ;





 int FZ_BIDI_LTR ;
 int FZ_BIDI_RTL ;

__attribute__((used)) static fz_bidi_level base_level_from_text(fz_bidi_chartype *types, size_t len)
{
 size_t i;

 for (i = 0; i < len; i++)
 {
  switch (types[i])
  {

  case 129:
   return FZ_BIDI_LTR;


  case 128:
  case 130:
   return FZ_BIDI_RTL;
  }
 }
 return FZ_BIDI_LTR;
}
