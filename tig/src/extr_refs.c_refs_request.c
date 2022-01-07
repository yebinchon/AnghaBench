
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct view {int dummy; } ;
struct reference {struct ref* ref; } ;
struct ref {char* name; } ;
struct line {struct reference* data; } ;
typedef enum request { ____Placeholder_request } request ;
struct TYPE_3__ {int argv; int env; } ;


 char const* GIT_MAIN_LOG (int ,int ,char*,char*,char*,char*,int ,int ) ;
 int OPEN_PREPARED ;
 int OPEN_SPLIT ;

 int REQ_NONE ;

 int argv_format (int ,int *,char const**,int,int) ;
 int commit_order_arg () ;
 int encoding_arg ;
 int load_refs (int) ;
 int log_custom_pretty_arg () ;
 TYPE_1__ main_view ;
 int open_view (struct view*,TYPE_1__*,int) ;
 int refresh_view (struct view*) ;
 int refs_is_all (struct reference*) ;
 int report (char*) ;
 int show_notes_arg () ;

__attribute__((used)) static enum request
refs_request(struct view *view, enum request request, struct line *line)
{
 struct reference *reference = line->data;

 switch (request) {
 case 128:
  load_refs(1);
  refresh_view(view);
  return REQ_NONE;

 case 129:
 {
  const struct ref *ref = reference->ref;
  const char *all_references_argv[] = {
   GIT_MAIN_LOG(encoding_arg, commit_order_arg(),
    "%(mainargs)", "",
    refs_is_all(reference) ? "--all" : ref->name, "",
    show_notes_arg(), log_custom_pretty_arg())
  };

  if (!argv_format(main_view.env, &main_view.argv, all_references_argv, 0, 0))
   report("Failed to format argument");
  else
   open_view(view, &main_view, OPEN_SPLIT | OPEN_PREPARED);
  return REQ_NONE;
 }
 default:
  return request;
 }
}
