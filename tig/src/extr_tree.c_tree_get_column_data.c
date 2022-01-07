
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view_column_data {int file_name; int * mode; int id; int * file_size; int * date; int author; } ;
struct view {int dummy; } ;
struct tree_entry {int name; int mode; int commit; int size; int time; int author; } ;
struct line {scalar_t__ type; struct tree_entry* data; } ;


 scalar_t__ LINE_DIRECTORY ;
 scalar_t__ LINE_HEADER ;

__attribute__((used)) static bool
tree_get_column_data(struct view *view, const struct line *line, struct view_column_data *column_data)
{
 const struct tree_entry *entry = line->data;

 if (line->type == LINE_HEADER)
  return 0;

 column_data->author = entry->author;
 column_data->date = &entry->time;
 if (line->type != LINE_DIRECTORY)
  column_data->file_size = &entry->size;
 column_data->id = entry->commit;
 column_data->mode = &entry->mode;
 column_data->file_name = entry->name;

 return 1;
}
