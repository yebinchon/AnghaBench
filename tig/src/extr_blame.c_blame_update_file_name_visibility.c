
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ display; } ;
struct TYPE_4__ {TYPE_1__ file_name; } ;
struct view_column {int hidden; TYPE_2__ opt; } ;
struct view {struct blame_state* private; } ;
struct blame_state {int auto_filename_display; } ;


 scalar_t__ FILENAME_AUTO ;
 scalar_t__ FILENAME_NO ;
 int VIEW_COLUMN_FILE_NAME ;
 struct view_column* get_view_column (struct view*,int ) ;

__attribute__((used)) static void
blame_update_file_name_visibility(struct view *view)
{
 struct blame_state *state = view->private;
 struct view_column *column = get_view_column(view, VIEW_COLUMN_FILE_NAME);

 if (!column)
  return;

 column->hidden = column->opt.file_name.display == FILENAME_NO ||
    (column->opt.file_name.display == FILENAME_AUTO &&
     !state->auto_filename_display);
}
