
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct view {int dummy; } ;
struct line {struct commit* data; } ;
struct commit {int id; } ;
typedef enum request { ____Placeholder_request } request ;
struct TYPE_3__ {int argv; int env; } ;


 char const* GIT_MAIN_LOG (int ,int ,char*,char*,int ,char*,int ,int ) ;
 int OPEN_PREPARED ;
 int OPEN_SPLIT ;

 int REQ_NONE ;
 int argv_format (int ,int *,char const**,int,int) ;
 int commit_order_arg () ;
 int encoding_arg ;
 int log_custom_pretty_arg () ;
 int main_request (struct view*,int,struct line*) ;
 TYPE_1__ main_view ;
 int open_view (struct view*,TYPE_1__*,int) ;
 int report (char*) ;
 int show_notes_arg () ;

__attribute__((used)) static enum request
reflog_request(struct view *view, enum request request, struct line *line)
{
 struct commit *commit = line->data;

 switch (request) {
 case 128:
 {
  const char *main_argv[] = {
   GIT_MAIN_LOG(encoding_arg, commit_order_arg(),
    "%(mainargs)", "", commit->id, "",
    show_notes_arg(), log_custom_pretty_arg())
  };

  if (!argv_format(main_view.env, &main_view.argv, main_argv, 0, 0))
   report("Failed to format argument");
  else
   open_view(view, &main_view, OPEN_SPLIT | OPEN_PREPARED);
  return REQ_NONE;
 }

 default:
  return main_request(view, request, line);
 }
}
