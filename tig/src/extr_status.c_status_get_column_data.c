
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct view_column_data {int file_name; int * status; struct view_column* section; } ;
struct TYPE_4__ {char const* text; int type; } ;
struct TYPE_5__ {TYPE_1__ section; } ;
struct view_column {TYPE_2__ opt; int type; } ;
struct view {struct line const* line; } ;
struct TYPE_6__ {int name; } ;
struct status {TYPE_3__ new; int status; } ;
struct line {int type; struct status* data; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;


 int LINE_DEFAULT ;

 int LINE_SECTION ;




 int VIEW_COLUMN_SECTION ;
 int opt_status_show_untracked_files ;
 char* status_onbranch ;

__attribute__((used)) static bool
status_get_column_data(struct view *view, const struct line *line, struct view_column_data *column_data)
{
 struct status *status = line->data;

 if (!status) {
  static struct view_column group_column;
  const char *text;
  enum line_type type;

  column_data->section = &group_column;
  column_data->section->type = VIEW_COLUMN_SECTION;

  switch (line->type) {
  case 130:
   type = LINE_SECTION;
   text = "Changes to be committed:";
   break;

  case 129:
   type = LINE_SECTION;
   text = "Changes not staged for commit:";
   break;

  case 128:
   type = LINE_SECTION;
   text = "Untracked files:";
   break;

  case 131:
   type = LINE_DEFAULT;
   text = "  (no files)";
   if (!opt_status_show_untracked_files
       && view->line < line
       && line[-1].type == 128)
    text = "  (not shown)";
   break;

  case 132:
   type = 132;
   text = status_onbranch;
   break;

  default:
   return 0;
  }

  column_data->section->opt.section.text = text;
  column_data->section->opt.section.type = type;

 } else {
  column_data->status = &status->status;
  column_data->file_name = status->new.name;
 }
 return 1;
}
