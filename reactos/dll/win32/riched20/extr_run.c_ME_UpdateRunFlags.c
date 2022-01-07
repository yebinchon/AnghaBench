
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nCharOfs; int nFlags; scalar_t__ len; } ;
typedef int ME_TextEditor ;
typedef TYPE_1__ ME_Run ;


 int MERF_ENDWHITE ;
 int MERF_HIDDEN ;
 int MERF_NOTEXT ;
 int MERF_SPLITTABLE ;
 int MERF_STARTWHITE ;
 int MERF_TABLESTART ;
 int MERF_WHITESPACE ;
 scalar_t__ ME_IsWSpace (int ) ;
 scalar_t__ RUN_IS_HIDDEN (TYPE_1__*) ;
 int assert (int) ;
 int * get_text (TYPE_1__*,scalar_t__) ;
 scalar_t__ run_is_entirely_ws (TYPE_1__*) ;
 scalar_t__ run_is_splittable (TYPE_1__*) ;

void ME_UpdateRunFlags(ME_TextEditor *editor, ME_Run *run)
{
  assert(run->nCharOfs >= 0);

  if (RUN_IS_HIDDEN(run) || run->nFlags & MERF_TABLESTART)
    run->nFlags |= MERF_HIDDEN;
  else
    run->nFlags &= ~MERF_HIDDEN;

  if (run_is_splittable( run ))
    run->nFlags |= MERF_SPLITTABLE;
  else
    run->nFlags &= ~MERF_SPLITTABLE;

  if (!(run->nFlags & MERF_NOTEXT))
  {
    if (run_is_entirely_ws( run ))
      run->nFlags |= MERF_WHITESPACE | MERF_STARTWHITE | MERF_ENDWHITE;
    else
    {
      run->nFlags &= ~MERF_WHITESPACE;

      if (ME_IsWSpace( *get_text( run, 0 ) ))
        run->nFlags |= MERF_STARTWHITE;
      else
        run->nFlags &= ~MERF_STARTWHITE;

      if (ME_IsWSpace( *get_text( run, run->len - 1 ) ))
        run->nFlags |= MERF_ENDWHITE;
      else
        run->nFlags &= ~MERF_ENDWHITE;
    }
  }
  else
    run->nFlags &= ~(MERF_WHITESPACE | MERF_STARTWHITE | MERF_ENDWHITE);
}
