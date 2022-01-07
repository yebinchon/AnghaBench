
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {char* ref; } ;
struct line {int type; scalar_t__ data; } ;
struct io {int dummy; } ;


 int doupdate () ;
 int get_cursor_pos (int,int) ;
 scalar_t__ io_done (struct io*) ;
 int set_cursor_pos (int,int) ;
 int status_update_prepare (struct io*,int ) ;
 int status_update_write (struct io*,scalar_t__,int ) ;
 int string_copy (char*,char*) ;
 int string_format (char*,char*,int,int,int) ;
 int update_view_title (struct view*) ;
 scalar_t__ view_has_line (struct view*,struct line*) ;
 scalar_t__ view_is_displayed (struct view*) ;

bool
status_update_files(struct view *view, struct line *line)
{
 char buf[sizeof(view->ref)];
 struct io io;
 bool result = 1;
 struct line *pos;
 int files = 0;
 int file, done;
 int cursor_y = -1, cursor_x = -1;

 if (!status_update_prepare(&io, line->type))
  return 0;

 for (pos = line; view_has_line(view, pos) && pos->data; pos++)
  files++;

 string_copy(buf, view->ref);
 get_cursor_pos(cursor_y, cursor_x);
 for (file = 0, done = 5; result && file < files; line++, file++) {
  int almost_done = file * 100 / files;

  if (almost_done > done && view_is_displayed(view)) {
   done = almost_done;
   string_format(view->ref, "updating file %u of %u (%d%% done)",
          file, files, done);
   update_view_title(view);
   set_cursor_pos(cursor_y, cursor_x);
   doupdate();
  }
  result = status_update_write(&io, line->data, line->type);
 }
 string_copy(view->ref, buf);

 return io_done(&io) && result;
}
