
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ fz_bidi_level ;
typedef int fz_bidi_chartype ;


 int BDI_BN ;
 int BDI_L ;


 int BDI_N ;

 int BDI_R ;


 scalar_t__ BIDI_LEVEL_MAX ;
 int assert (int) ;
 scalar_t__ greater_even (scalar_t__) ;
 scalar_t__ greater_odd (scalar_t__) ;

size_t fz_bidi_resolve_explicit(fz_bidi_level level, fz_bidi_chartype dir, fz_bidi_chartype *pcls, fz_bidi_level *plevel, size_t cch,
    fz_bidi_level n_nest)
{
 size_t ich;



 int nLastValid = n_nest;


 assert(n_nest >= 0 && level >= 0 && level <= BIDI_LEVEL_MAX);


 for (ich = 0; ich < cch; ich++)
 {
  fz_bidi_chartype cls = pcls[ich];
  switch (cls)
  {
  case 131:
  case 132:
   n_nest++;
   if (greater_even(level) <= BIDI_LEVEL_MAX)
   {
    plevel[ich] = greater_even(level);
    pcls[ich] = BDI_BN;
    ich += fz_bidi_resolve_explicit(plevel[ich], (cls == 132 ? BDI_N : BDI_L),
       &pcls[ich+1], &plevel[ich+1],
        cch - (ich+1), n_nest);
    n_nest--;
    continue;
   }
   cls = pcls[ich] = BDI_BN;
   break;

  case 128:
  case 129:
   n_nest++;
   if (greater_odd(level) <= BIDI_LEVEL_MAX)
   {
    plevel[ich] = greater_odd(level);
    pcls[ich] = BDI_BN;
    ich += fz_bidi_resolve_explicit(plevel[ich], (cls == 129 ? BDI_N : BDI_R),
        &pcls[ich+1], &plevel[ich+1],
         cch - (ich+1), n_nest);
    n_nest--;
    continue;
   }
   cls = pcls[ich] = BDI_BN;
   break;

  case 130:
   cls = pcls[ich] = BDI_BN;
   if (n_nest)
   {
    if (nLastValid < n_nest)
    {
     n_nest--;
    }
    else
    {
     cch = ich;
    }
   }
   break;
  }


  if (dir != BDI_N)
  {
   cls = dir;
  }
  plevel[ich] = level;
  if (pcls[ich] != BDI_BN)
   pcls[ich] = cls;
 }

 return ich;
}
