
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_bidi_level ;
typedef int fz_bidi_chartype ;


 int const BDI_BN ;
 scalar_t__** add_level ;
 int assert (int) ;
 size_t odd (int ) ;

void fz_bidi_resolve_implicit(const fz_bidi_chartype *pcls, fz_bidi_level *plevel, size_t cch)
{
 size_t ich;

 for (ich = 0; ich < cch; ich++)
 {



  if (pcls[ich] == BDI_BN)
  {
   continue;
  }
  assert(pcls[ich] > 0);
  assert(pcls[ich] < 5);
  plevel[ich] += add_level[odd(plevel[ich])][pcls[ich] - 1];
 }
}
