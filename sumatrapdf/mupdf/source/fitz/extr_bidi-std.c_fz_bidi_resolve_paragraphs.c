
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ fz_bidi_chartype ;


 scalar_t__ BDI_B ;
 scalar_t__ BDI_BN ;

int fz_bidi_resolve_paragraphs(fz_bidi_chartype *types, int cch)
{
 int ich;


 for(ich = 0; ich < cch && types[ich] != BDI_B; ich++)
  ;

 if (ich < cch && types[ich] == BDI_B)
  types[ich++] = BDI_BN;
 return ich;
}
