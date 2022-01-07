
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int right; int left; } ;
struct TYPE_8__ {int style; scalar_t__ x_offset; int char_width; scalar_t__ text_width; TYPE_1__ format_rect; int hwndSelf; int flags; } ;
typedef int LRESULT ;
typedef int INT ;
typedef TYPE_2__ EDITSTATE ;


 int EDIT_EM_LineScroll_internal (TYPE_2__*,int,int ) ;
 int EDIT_NOTIFY_PARENT (TYPE_2__*,int ) ;
 int EDIT_UpdateScrollInfo (TYPE_2__*) ;
 int EF_HSCROLL_TRACK ;


 int EN_HSCROLL ;
 int ERR (char*,int,int) ;
 int ES_AUTOHSCROLL ;
 int ES_MULTILINE ;
 int GWL_STYLE ;
 int GetScrollPos (int ,int ) ;
 int GetWindowLongW (int ,int ) ;
 int HSCROLL_FRACTION ;

 int SB_HORZ ;
 int TRACE (char*,...) ;
 int WS_HSCROLL ;

__attribute__((used)) static LRESULT EDIT_WM_HScroll(EDITSTATE *es, INT action, INT pos)
{
 INT dx;
 INT fw;

 if (!(es->style & ES_MULTILINE))
  return 0;

 if (!(es->style & ES_AUTOHSCROLL))
  return 0;

 dx = 0;
 fw = es->format_rect.right - es->format_rect.left;
 switch (action) {
 case 134:
  TRACE("SB_LINELEFT\n");
  if (es->x_offset)
   dx = -es->char_width;
  break;
 case 133:
  TRACE("SB_LINERIGHT\n");
  if (es->x_offset < es->text_width)
   dx = es->char_width;
  break;
 case 132:
  TRACE("SB_PAGELEFT\n");
  if (es->x_offset)
   dx = -fw / HSCROLL_FRACTION / es->char_width * es->char_width;
  break;
 case 131:
  TRACE("SB_PAGERIGHT\n");
  if (es->x_offset < es->text_width)
   dx = fw / HSCROLL_FRACTION / es->char_width * es->char_width;
  break;
 case 135:
  TRACE("SB_LEFT\n");
  if (es->x_offset)
   dx = -es->x_offset;
  break;
 case 130:
  TRACE("SB_RIGHT\n");
  if (es->x_offset < es->text_width)
   dx = es->text_width - es->x_offset;
  break;
 case 128:
  TRACE("SB_THUMBTRACK %d\n", pos);
  es->flags |= EF_HSCROLL_TRACK;
  if(es->style & WS_HSCROLL)
      dx = pos - es->x_offset;
  else
  {
      INT fw, new_x;

      if(pos < 0 || pos > 100) return 0;

      fw = es->format_rect.right - es->format_rect.left;
      new_x = pos * (es->text_width - fw) / 100;
      dx = es->text_width ? (new_x - es->x_offset) : 0;
  }
  break;
 case 129:
  TRACE("SB_THUMBPOSITION %d\n", pos);
  es->flags &= ~EF_HSCROLL_TRACK;
  if(GetWindowLongW( es->hwndSelf, GWL_STYLE ) & WS_HSCROLL)
      dx = pos - es->x_offset;
  else
  {
      INT fw, new_x;

      if(pos < 0 || pos > 100) return 0;

      fw = es->format_rect.right - es->format_rect.left;
      new_x = pos * (es->text_width - fw) / 100;
      dx = es->text_width ? (new_x - es->x_offset) : 0;
  }
  if (!dx) {

   EDIT_UpdateScrollInfo(es);
   EDIT_NOTIFY_PARENT(es, EN_HSCROLL);
  }
  break;
 case 136:
  TRACE("SB_ENDSCROLL\n");
  break;






 case 138:
 {
  LRESULT ret;
  if(GetWindowLongW( es->hwndSelf, GWL_STYLE ) & WS_HSCROLL)
      ret = GetScrollPos(es->hwndSelf, SB_HORZ);
  else
  {

      INT fw = es->format_rect.right - es->format_rect.left;
      ret = es->text_width ? es->x_offset * 100 / (es->text_width - fw) : 0;
  }
  TRACE("EM_GETTHUMB: returning %ld\n", ret);
  return ret;
 }
 case 137:
  TRACE("EM_LINESCROLL16\n");
  dx = pos;
  break;

 default:
  ERR("undocumented WM_HSCROLL action %d (0x%04x), please report\n",
                    action, action);
  return 0;
 }
 if (dx)
 {
     INT fw = es->format_rect.right - es->format_rect.left;

     if(es->x_offset + dx + fw > es->text_width)
  dx = es->text_width - fw - es->x_offset;
     if(dx)
  EDIT_EM_LineScroll_internal(es, dx, 0);
 }
 return 0;
}
