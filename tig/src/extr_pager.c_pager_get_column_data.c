
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view_column_data {int box; int text; } ;
struct view {int dummy; } ;
struct line {int data; } ;


 int box_text (struct line const*) ;

bool
pager_get_column_data(struct view *view, const struct line *line, struct view_column_data *column_data)
{
 column_data->text = box_text(line);
 column_data->box = line->data;
 return 1;
}
