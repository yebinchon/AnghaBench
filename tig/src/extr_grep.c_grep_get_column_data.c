
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct view_column_data {char* text; scalar_t__* file_name; int * line_number; struct view_column* section; } ;
struct TYPE_3__ {int display; } ;
struct TYPE_4__ {TYPE_1__ file_name; } ;
struct view_column {TYPE_2__ opt; int type; } ;
struct view {int dummy; } ;
struct line {scalar_t__ type; } ;
struct grep_line {char* text; scalar_t__* file; int lineno; } ;


 int FILENAME_ALWAYS ;
 scalar_t__ LINE_DELIMITER ;
 int VIEW_COLUMN_FILE_NAME ;
 int VIEW_COLUMN_TEXT ;
 struct grep_line* grep_get_line (struct line const*) ;

__attribute__((used)) static bool
grep_get_column_data(struct view *view, const struct line *line, struct view_column_data *column_data)
{
 struct grep_line *grep = grep_get_line(line);

 if (line->type == LINE_DELIMITER) {
  static struct view_column separator_column;

  separator_column.type = VIEW_COLUMN_TEXT;
  column_data->section = &separator_column;
  column_data->text = "--";
  return 1;
 }

 if (*grep->file && !*grep->text) {
  static struct view_column file_name_column;

  file_name_column.type = VIEW_COLUMN_FILE_NAME;
  file_name_column.opt.file_name.display = FILENAME_ALWAYS;

  column_data->section = &file_name_column;
 }

 column_data->line_number = &grep->lineno;
 column_data->file_name = grep->file;
 column_data->text = grep->text;
 return 1;
}
