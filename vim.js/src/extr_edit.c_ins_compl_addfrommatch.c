
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * cp_str; struct TYPE_8__* cp_next; } ;
typedef TYPE_2__ compl_T ;
typedef int char_u ;
struct TYPE_10__ {int cp_flags; TYPE_2__* cp_next; int * cp_str; } ;
struct TYPE_7__ {scalar_t__ col; } ;
struct TYPE_9__ {TYPE_1__ w_cursor; } ;


 int ORIGINAL_TEXT ;
 int PTR2CHAR (int *) ;
 scalar_t__ STRLEN (int *) ;
 scalar_t__ compl_col ;
 TYPE_2__* compl_first_match ;
 int * compl_leader ;
 TYPE_5__* compl_shown_match ;
 TYPE_4__* curwin ;
 int ins_compl_addleader (int) ;
 scalar_t__ ins_compl_equal (TYPE_2__*,int *,int) ;

__attribute__((used)) static void
ins_compl_addfrommatch()
{
    char_u *p;
    int len = (int)curwin->w_cursor.col - (int)compl_col;
    int c;
    compl_T *cp;

    p = compl_shown_match->cp_str;
    if ((int)STRLEN(p) <= len)
    {


 if (compl_shown_match->cp_flags & ORIGINAL_TEXT)
 {
     p = ((void*)0);
     for (cp = compl_shown_match->cp_next; cp != ((void*)0)
     && cp != compl_first_match; cp = cp->cp_next)
     {
  if (compl_leader == ((void*)0)
   || ins_compl_equal(cp, compl_leader,
         (int)STRLEN(compl_leader)))
  {
      p = cp->cp_str;
      break;
  }
     }
     if (p == ((void*)0) || (int)STRLEN(p) <= len)
  return;
 }
 else
     return;
    }
    p += len;
    c = PTR2CHAR(p);
    ins_compl_addleader(c);
}
