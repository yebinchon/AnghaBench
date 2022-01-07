
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct view {TYPE_1__* env; } ;
struct line {scalar_t__ type; } ;
typedef enum request { ____Placeholder_request } request ;
struct TYPE_4__ {int cdup; } ;
struct TYPE_3__ {char* file; unsigned int lineno; } ;


 scalar_t__ LINE_DIFF_STAT ;
 int REQ_NONE ;
 int R_OK ;
 int SIZEOF_STR ;
 scalar_t__ access (char*,int ) ;
 unsigned int diff_get_lineno (struct view*,struct line*) ;
 char* diff_get_pathname (struct view*,struct line*) ;
 int open_editor (char const*,unsigned int) ;
 TYPE_2__ repo ;
 int report (char*,...) ;
 int string_concat_path (char*,int ,char const*) ;

enum request
diff_common_edit(struct view *view, enum request request, struct line *line)
{
 const char *file;
 char path[SIZEOF_STR];
 unsigned int lineno;

 if (line->type == LINE_DIFF_STAT) {
  file = view->env->file;
  lineno = view->env->lineno;
 } else {
  file = diff_get_pathname(view, line);
  lineno = diff_get_lineno(view, line);
 }

 if (!file) {
  report("Nothing to edit");
  return REQ_NONE;
 }

 if (!string_concat_path(path, repo.cdup, file) || access(path, R_OK)) {
  report("Failed to open file: %s", file);
  return REQ_NONE;
 }

 open_editor(file, lineno);
 return REQ_NONE;
}
