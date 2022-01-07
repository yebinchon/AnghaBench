
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view_column_data {int text; int commit_title; int * date; int file_name; int author; int id; } ;
struct view {int dummy; } ;
struct line {struct blame* data; } ;
struct blame {int text; TYPE_1__* commit; } ;
struct TYPE_2__ {int title; int time; int filename; int author; int id; } ;



bool
blame_get_column_data(struct view *view, const struct line *line, struct view_column_data *column_data)
{
 struct blame *blame = line->data;

 if (blame->commit) {
  column_data->id = blame->commit->id;
  column_data->author = blame->commit->author;
  column_data->file_name = blame->commit->filename;
  column_data->date = &blame->commit->time;
  column_data->commit_title = blame->commit->title;
 }

 column_data->text = blame->text;

 return 1;
}
