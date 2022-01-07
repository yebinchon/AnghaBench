
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {scalar_t__* ref; int lines; struct grep_state* private; } ;
struct line {int dummy; } ;
struct grep_state {char const* last_file; int no_file_group; } ;
struct grep_line {char const* file; int text; int lineno; } ;
struct buffer {char* data; } ;


 int LINE_DEFAULT ;
 int LINE_DELIMITER ;
 int LINE_FILE ;
 struct line* add_line_alloc (struct view*,struct grep_line**,int ,size_t,int) ;
 int * add_line_nodata (struct view*,int ) ;
 int add_line_text (struct view*,char const*,int ) ;
 int atoi (char*) ;
 char* get_path (char*) ;
 char* io_memchr (struct buffer*,char*,int ) ;
 int report (char*) ;
 int strcmp (char*,char*) ;
 size_t strlen (char*) ;
 int strncpy (int ,char*,size_t) ;
 int view_column_info_update (struct view*,struct line*) ;

__attribute__((used)) static bool
grep_read(struct view *view, struct buffer *buf, bool force_stop)
{
 struct grep_state *state = view->private;
 struct grep_line *grep;
 char *lineno, *text;
 struct line *line;
 const char *file;
 size_t textlen;

 if (!buf) {
  state->last_file = ((void*)0);
  if (!view->lines) {
   view->ref[0] = 0;
   report("No matches found");
  }
  return 1;
 }

 if (!strcmp(buf->data, "--"))
  return add_line_nodata(view, LINE_DELIMITER) != ((void*)0);

 lineno = io_memchr(buf, buf->data, 0);
 text = io_memchr(buf, lineno, 0);







 if (!lineno || !text)
  return 1;

 textlen = strlen(text);

 file = get_path(buf->data);
 if (!file)
  return 0;

 if (!state->no_file_group && file != state->last_file &&
     !add_line_text(view, file, LINE_FILE))
  return 0;

 line = add_line_alloc(view, &grep, LINE_DEFAULT, textlen, 0);
 if (!line)
  return 0;

 grep->file = file;
 grep->lineno = atoi(lineno);
 if (grep->lineno > 0)
  grep->lineno -= 1;
 strncpy(grep->text, text, textlen + 1);
 view_column_info_update(view, line);

 state->last_file = file;

 return 1;
}
