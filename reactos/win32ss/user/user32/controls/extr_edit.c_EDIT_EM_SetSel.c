
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ selection_start; scalar_t__ selection_end; int flags; } ;
typedef TYPE_1__ EDITSTATE ;
typedef scalar_t__ BOOL ;


 int EDIT_InvalidateText (TYPE_1__*,scalar_t__,scalar_t__) ;
 int EF_AFTER_WRAP ;
 int ORDER_UINT (scalar_t__,scalar_t__) ;
 scalar_t__ get_text_length (TYPE_1__*) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static void EDIT_EM_SetSel(EDITSTATE *es, UINT start, UINT end, BOOL after_wrap)
{
 UINT old_start = es->selection_start;
 UINT old_end = es->selection_end;
 UINT len = get_text_length(es);

 if (start == (UINT)-1) {
  start = es->selection_end;
  end = es->selection_end;
 } else {
  start = min(start, len);
  end = min(end, len);
 }
 es->selection_start = start;
 es->selection_end = end;
 if (after_wrap)
  es->flags |= EF_AFTER_WRAP;
 else
  es->flags &= ~EF_AFTER_WRAP;
        ORDER_UINT(end, old_end);
        ORDER_UINT(start, old_start);
        ORDER_UINT(old_start, old_end);
        ORDER_UINT(start, end);


 if (end != old_start)
        {
            if (old_start > end )
            {
                EDIT_InvalidateText(es, start, end);
                EDIT_InvalidateText(es, old_start, old_end);
            }
            else
            {
                EDIT_InvalidateText(es, start, old_start);
                EDIT_InvalidateText(es, end, old_end);
            }
 }
        else EDIT_InvalidateText(es, start, old_end);
}
