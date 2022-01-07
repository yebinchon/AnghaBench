
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int fz_bidi_level ;
typedef scalar_t__ fz_bidi_chartype ;
typedef int fz_bidi_action ;


 scalar_t__ BDI_BN ;
 int IX ;
 scalar_t__ XX ;
 int** action_weak ;
 int assert (int) ;
 scalar_t__ embedding_direction (int) ;
 int fz_warn (int *,char*,size_t,scalar_t__) ;
 scalar_t__ get_deferred_type (int) ;
 scalar_t__ get_resolved_type (int) ;
 scalar_t__ odd (int) ;
 int set_deferred_run (scalar_t__*,size_t,size_t,scalar_t__) ;
 int** state_weak ;
 int xl ;
 int xr ;

void fz_bidi_resolve_weak(fz_context *ctx, fz_bidi_level baselevel, fz_bidi_chartype *pcls, fz_bidi_level *plevel, size_t cch)
{
 int state = odd(baselevel) ? xr : xl;
 fz_bidi_chartype cls;
 size_t ich;
 fz_bidi_action action;
 fz_bidi_chartype cls_run;
 fz_bidi_chartype cls_new;

 fz_bidi_level level = baselevel;

 size_t cch_run = 0;

 for (ich = 0; ich < cch; ich++)
 {
  if (pcls[ich] > BDI_BN) {
   fz_warn(ctx, "error: pcls[%zu] > BN (%d)\n", ich, pcls[ich]);
  }


  if (pcls[ich] == BDI_BN)
  {

   plevel[ich] = level;


   if (ich + 1 == cch && level != baselevel)
   {


    pcls[ich] = embedding_direction(level);
   }
   else if (ich + 1 < cch && level != plevel[ich+1] && pcls[ich+1] != BDI_BN)
   {


    int newlevel = plevel[ich+1];
    if (level > newlevel) {
     newlevel = level;
    }
    plevel[ich] = newlevel;


    pcls[ich] = embedding_direction(newlevel);
    level = plevel[ich+1];
   }
   else
   {

    if (cch_run)
    {
     cch_run++;
    }
    continue;
   }
  }

  assert(pcls[ich] <= BDI_BN);
  cls = pcls[ich];

  action = action_weak[state][cls];


  cls_run = get_deferred_type(action);
  if (cls_run != XX)
  {
   set_deferred_run(pcls, cch_run, ich, cls_run);
   cch_run = 0;
  }


  cls_new = get_resolved_type(action);
  if (cls_new != XX)
   pcls[ich] = cls_new;


  if (IX & action)
   cch_run++;

  state = state_weak[state][cls];
 }



 cls = embedding_direction(level);


 cls_run = get_deferred_type(action_weak[state][cls]);
 if (cls_run != XX)
  set_deferred_run(pcls, cch_run, ich, cls_run);
}
