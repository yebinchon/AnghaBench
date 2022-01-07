
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {struct main_state* private; } ;
struct main_state {scalar_t__* reflogmsg; } ;
struct line {scalar_t__ lineno; } ;
struct commit {int id; int title; } ;
typedef enum line_type { ____Placeholder_line_type } line_type ;
typedef int buf ;


 int SIZEOF_STR ;
 struct line* add_line_alloc (struct view*,struct commit**,int,size_t,int) ;
 scalar_t__ is_head_commit (int ) ;
 int memset (struct commit*,int ,int) ;
 scalar_t__ opt_start_on_head ;
 int select_view_line (struct view*,scalar_t__) ;
 int string_expand (char*,int,char const*,size_t,int) ;
 size_t strlen (char const*) ;
 int strncpy (int ,char const*,size_t) ;
 int view_column_info_update (struct view*,struct line*) ;

__attribute__((used)) static struct commit *
main_add_commit(struct view *view, enum line_type type, struct commit *template,
  const char *title, bool custom)
{
 struct main_state *state = view->private;
 size_t titlelen;
 struct commit *commit;
 char buf[SIZEOF_STR / 2];
 struct line *line;



 string_expand(buf, sizeof(buf), title, strlen(title), 1);
 title = buf;
 titlelen = strlen(title);

 line = add_line_alloc(view, &commit, type, titlelen, custom);
 if (!line)
  return ((void*)0);

 *commit = *template;
 strncpy(commit->title, title, titlelen);
 memset(template, 0, sizeof(*template));
 state->reflogmsg[0] = 0;

 view_column_info_update(view, line);

 if (opt_start_on_head && is_head_commit(commit->id))
  select_view_line(view, line->lineno + 1);

 return commit;
}
