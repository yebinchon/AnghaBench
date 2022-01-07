
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct screen_sel {scalar_t__ sy; scalar_t__ ey; scalar_t__ ex; scalar_t__ sx; scalar_t__ modekeys; scalar_t__ rectangle; scalar_t__ hidden; } ;
struct screen {struct screen_sel* sel; } ;


 scalar_t__ MODEKEY_EMACS ;

int
screen_check_selection(struct screen *s, u_int px, u_int py)
{
 struct screen_sel *sel = s->sel;
 u_int xx;

 if (sel == ((void*)0) || sel->hidden)
  return (0);

 if (sel->rectangle) {
  if (sel->sy < sel->ey) {

   if (py < sel->sy || py > sel->ey)
    return (0);
  } else if (sel->sy > sel->ey) {

   if (py > sel->sy || py < sel->ey)
    return (0);
  } else {

   if (py != sel->sy)
    return (0);
  }






  if (sel->ex < sel->sx) {

   if (px < sel->ex)
    return (0);

   if (px > sel->sx)
    return (0);
  } else {

   if (px < sel->sx)
    return (0);

   if (px > sel->ex)
    return (0);
  }
 } else {




  if (sel->sy < sel->ey) {

   if (py < sel->sy || py > sel->ey)
    return (0);

   if (py == sel->sy && px < sel->sx)
    return (0);

   if (sel->modekeys == MODEKEY_EMACS)
    xx = (sel->ex == 0 ? 0 : sel->ex - 1);
   else
    xx = sel->ex;
   if (py == sel->ey && px > xx)
    return (0);
  } else if (sel->sy > sel->ey) {

   if (py > sel->sy || py < sel->ey)
    return (0);

   if (py == sel->ey && px < sel->ex)
    return (0);

   if (sel->modekeys == MODEKEY_EMACS)
    xx = sel->sx - 1;
   else
    xx = sel->sx;
   if (py == sel->sy && (sel->sx == 0 || px > xx))
    return (0);
  } else {

   if (py != sel->sy)
    return (0);

   if (sel->ex < sel->sx) {

    if (sel->modekeys == MODEKEY_EMACS)
     xx = sel->sx - 1;
    else
     xx = sel->sx;
    if (px > xx || px < sel->ex)
     return (0);
   } else {

    if (sel->modekeys == MODEKEY_EMACS)
     xx = (sel->ex == 0 ? 0 : sel->ex - 1);
    else
     xx = sel->ex;
    if (px < sel->sx || px > xx)
     return (0);
   }
  }
 }

 return (1);
}
