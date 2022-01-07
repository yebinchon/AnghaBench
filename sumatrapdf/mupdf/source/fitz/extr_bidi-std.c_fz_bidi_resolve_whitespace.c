
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_bidi_level ;
typedef int fz_bidi_chartype ;
 int set_deferred_level_run (int *,size_t,size_t,int ) ;

void fz_bidi_resolve_whitespace(fz_bidi_level baselevel, const fz_bidi_chartype *pcls, fz_bidi_level *plevel,
    size_t cch)
{
 size_t cchrun = 0;
 fz_bidi_level oldlevel = baselevel;
 size_t ich;

 for (ich = 0; ich < cch; ich++)
 {
  switch(pcls[ich])
  {
  default:
   cchrun = 0;
   break;
  case 128:
   cchrun++;
   break;

  case 131:
  case 134:
  case 133:
  case 130:
  case 132:
  case 135:
   plevel[ich] = oldlevel;
   cchrun++;
   break;

  case 129:
  case 136:

   set_deferred_level_run(plevel, cchrun, ich, baselevel);
   cchrun = 0;
   plevel[ich] = baselevel;
   break;
  }
  oldlevel = plevel[ich];
 }

 set_deferred_level_run(plevel, cchrun, ich, baselevel);
}
