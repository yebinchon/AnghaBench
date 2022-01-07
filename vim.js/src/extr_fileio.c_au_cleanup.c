
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ event_T ;
struct TYPE_5__ {struct TYPE_5__* next; int reg_prog; int * pat; struct TYPE_5__* cmd; struct TYPE_5__* cmds; } ;
typedef TYPE_1__ AutoPat ;
typedef TYPE_1__ AutoCmd ;


 scalar_t__ FALSE ;
 scalar_t__ NUM_EVENTS ;
 scalar_t__ au_need_clean ;
 scalar_t__ autocmd_busy ;
 TYPE_1__** first_autopat ;
 int vim_free (TYPE_1__*) ;
 int vim_regfree (int ) ;

__attribute__((used)) static void
au_cleanup()
{
    AutoPat *ap, **prev_ap;
    AutoCmd *ac, **prev_ac;
    event_T event;

    if (autocmd_busy || !au_need_clean)
 return;


    for (event = (event_T)0; (int)event < (int)NUM_EVENTS;
         event = (event_T)((int)event + 1))
    {

 prev_ap = &(first_autopat[(int)event]);
 for (ap = *prev_ap; ap != ((void*)0); ap = *prev_ap)
 {

     prev_ac = &(ap->cmds);
     for (ac = *prev_ac; ac != ((void*)0); ac = *prev_ac)
     {


  if (ap->pat == ((void*)0) || ac->cmd == ((void*)0))
  {
      *prev_ac = ac->next;
      vim_free(ac->cmd);
      vim_free(ac);
  }
  else
      prev_ac = &(ac->next);
     }


     if (ap->pat == ((void*)0))
     {
  *prev_ap = ap->next;
  vim_regfree(ap->reg_prog);
  vim_free(ap);
     }
     else
  prev_ap = &(ap->next);
 }
    }

    au_need_clean = FALSE;
}
