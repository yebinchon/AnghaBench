
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_bidi_level ;
typedef scalar_t__ fz_bidi_chartype ;


 scalar_t__ BDI_BN ;
 scalar_t__ BDI_N ;
 int In ;
 int** action_neutrals ;
 int assert (int) ;
 scalar_t__ embedding_direction (int ) ;
 scalar_t__ get_deferred_neutrals (int,int ) ;
 scalar_t__ get_resolved_neutrals (int) ;
 int l ;
 scalar_t__ odd (int ) ;
 int r ;
 int set_deferred_run (scalar_t__*,size_t,size_t,scalar_t__) ;
 int** state_neutrals ;

void fz_bidi_resolve_neutrals(fz_bidi_level baselevel, fz_bidi_chartype *pcls, const fz_bidi_level *plevel, size_t cch)
{

 int state = odd(baselevel) ? r : l;
 fz_bidi_chartype cls;
 size_t ich;
 fz_bidi_chartype cls_run;

 size_t cch_run = 0;
 fz_bidi_level level = baselevel;

 for (ich = 0; ich < cch; ich++)
 {
  int action;
  fz_bidi_chartype cls_new;


  if (pcls[ich] == BDI_BN)
  {

   if (cch_run)
    cch_run++;


   continue;
  }

  assert(pcls[ich] < 5);
  cls = pcls[ich];

  action = action_neutrals[state][cls];


  cls_run = get_deferred_neutrals(action, level);
  if (cls_run != BDI_N)
  {
   set_deferred_run(pcls, cch_run, ich, cls_run);
   cch_run = 0;
  }


  cls_new = get_resolved_neutrals(action);
  if (cls_new != BDI_N)
   pcls[ich] = cls_new;

  if (In & action)
   cch_run++;

  state = state_neutrals[state][cls];
  level = plevel[ich];
 }


 cls = embedding_direction(level);


 cls_run = get_deferred_neutrals(action_neutrals[state][cls], level);
 if (cls_run != BDI_N)
  set_deferred_run(pcls, cch_run, ich, cls_run);
}
