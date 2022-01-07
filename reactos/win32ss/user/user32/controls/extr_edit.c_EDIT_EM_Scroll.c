
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bottom; int top; } ;
struct TYPE_7__ {int style; int y_offset; int line_count; int line_height; TYPE_1__ format_rect; } ;
typedef int LRESULT ;
typedef int INT ;
typedef TYPE_2__ EDITSTATE ;


 int EDIT_EM_LineScroll (TYPE_2__*,int ,int) ;
 int ES_MULTILINE ;
 int FALSE ;
 int MAKELONG (int,int ) ;




 int TRUE ;
 int get_vertical_line_count (TYPE_2__*) ;
 int max (int,int ) ;

__attribute__((used)) static LRESULT EDIT_EM_Scroll(EDITSTATE *es, INT action)
{
 INT dy;

 if (!(es->style & ES_MULTILINE))
  return (LRESULT)FALSE;

 dy = 0;

 switch (action) {
 case 130:
  if (es->y_offset)
   dy = -1;
  break;
 case 131:
  if (es->y_offset < es->line_count - 1)
   dy = 1;
  break;
 case 128:
  if (es->y_offset)
   dy = -(es->format_rect.bottom - es->format_rect.top) / es->line_height;
  break;
 case 129:
  if (es->y_offset < es->line_count - 1)
   dy = (es->format_rect.bottom - es->format_rect.top) / es->line_height;
  break;
 default:
  return (LRESULT)FALSE;
 }
 if (dy) {
     INT vlc = get_vertical_line_count(es);

     if(es->y_offset + dy > es->line_count - vlc)
  dy = max(es->line_count - vlc, 0) - es->y_offset;


     if(dy) {
  EDIT_EM_LineScroll(es, 0, dy);
  return MAKELONG(dy, TRUE);
     }

 }
 return (LRESULT)FALSE;
}
