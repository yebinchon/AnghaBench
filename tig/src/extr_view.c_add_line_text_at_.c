
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct view {TYPE_2__* ops; } ;
struct line {struct box* data; } ;
struct box {size_t cells; TYPE_1__* cell; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;
struct TYPE_4__ {scalar_t__ column_bits; } ;
struct TYPE_3__ {size_t length; int type; } ;


 struct line* add_line_at (struct view*,unsigned long,int *,int,int ,int) ;
 int box_sizeof (int *,size_t,size_t) ;
 int box_text_copy (struct box*,size_t,char const*,size_t) ;
 int view_column_info_update (struct view*,struct line*) ;

struct line *
add_line_text_at_(struct view *view, unsigned long pos, const char *text, size_t textlen, enum line_type type, size_t cells, bool custom)
{
 struct box *box;
 struct line *line = add_line_at(view, pos, ((void*)0), type, box_sizeof(((void*)0), cells, textlen), custom);

 if (!line)
  return ((void*)0);

 box = line->data;
 box->cell[box->cells].length = textlen;
 box->cell[box->cells++].type = type;
 box_text_copy(box, cells, text, textlen);

 if (view->ops->column_bits)
  view_column_info_update(view, line);
 return line;
}
