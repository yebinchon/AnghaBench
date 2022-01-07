
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ col; int lnum; } ;
typedef TYPE_1__ pos_T ;
typedef scalar_t__ colnr_T ;
typedef int char_u ;
struct TYPE_8__ {TYPE_1__ w_cursor; } ;


 scalar_t__ STRLEN (int *) ;
 TYPE_1__ VIsual ;
 int VIsual_active ;
 TYPE_4__* curwin ;
 int hasAnyFolding (TYPE_4__*) ;
 scalar_t__ hasFolding (int ,int *,int *) ;
 scalar_t__ has_mbyte ;
 scalar_t__ ltoreq (TYPE_1__,TYPE_1__) ;
 int mb_adjust_cursor () ;
 int * ml_get (int ) ;
 char* p_sel ;

void
foldAdjustVisual()
{
    pos_T *start, *end;
    char_u *ptr;

    if (!VIsual_active || !hasAnyFolding(curwin))
 return;

    if (ltoreq(VIsual, curwin->w_cursor))
    {
 start = &VIsual;
 end = &curwin->w_cursor;
    }
    else
    {
 start = &curwin->w_cursor;
 end = &VIsual;
    }
    if (hasFolding(start->lnum, &start->lnum, ((void*)0)))
 start->col = 0;
    if (hasFolding(end->lnum, ((void*)0), &end->lnum))
    {
 ptr = ml_get(end->lnum);
 end->col = (colnr_T)STRLEN(ptr);
 if (end->col > 0 && *p_sel == 'o')
     --end->col;





    }
}
