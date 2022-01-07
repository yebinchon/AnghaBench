
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct ref_format {int end; int start; } ;
struct ref {int name; struct ref* next; } ;


 int LINE_PP_REFS ;
 int SIZEOF_STR ;
 int VIEW_ADD_DESCRIBE_REF ;
 int add_line_text (struct view*,char const*,int ) ;
 struct ref_format* get_ref_format (int ,struct ref const*) ;
 struct ref* get_ref_list (char const*) ;
 int opt_reference_format ;
 scalar_t__ refs_contain_tag () ;
 int string_format_from (char*,size_t*,char*,char const*,int ,int ,int ) ;
 scalar_t__ view_has_flags (struct view*,int ) ;

__attribute__((used)) static void
add_pager_refs(struct view *view, const char *commit_id)
{
 char buf[SIZEOF_STR];
 const struct ref *list;
 size_t bufpos = 0;
 const char *sep = "Refs: ";

 list = get_ref_list(commit_id);
 if (!list) {
  if (view_has_flags(view, VIEW_ADD_DESCRIBE_REF) && refs_contain_tag())
   add_line_text(view, sep, LINE_PP_REFS);
  return;
 }

 for (; list; list = list->next) {
  const struct ref *ref = list;
  const struct ref_format *fmt = get_ref_format(opt_reference_format, ref);

  if (!string_format_from(buf, &bufpos, "%s%s%s%s", sep,
     fmt->start, ref->name, fmt->end))
   return;
  sep = ", ";
 }

 if (bufpos == 0)
  return;

 add_line_text(view, buf, LINE_PP_REFS);
}
