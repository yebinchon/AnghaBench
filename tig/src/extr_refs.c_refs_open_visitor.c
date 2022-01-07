
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct view {int dummy; } ;
struct reference {struct ref const* ref; } ;
struct ref {int type; } ;
struct line {int dummy; } ;


 int LINE_DEFAULT ;
 int REFERENCE_BRANCH ;
 int REFERENCE_HEAD ;
 int REFERENCE_LOCAL_TAG ;
 int REFERENCE_REMOTE ;
 int REFERENCE_TAG ;
 int REFERENCE_TRACKED_REMOTE ;




 struct line* add_line_alloc (struct view*,struct reference**,int ,int ,int) ;
 struct ref const* refs_all ;
 int refs_filter ;
 int view_column_info_update (struct view*,struct line*) ;

__attribute__((used)) static bool
refs_open_visitor(void *data, const struct ref *ref)
{
 struct view *view = data;
 struct reference *reference;
 bool is_all = ref == refs_all;
 struct line *line;

        if (!is_all)
  switch (refs_filter) {
  case 128:
   if (ref->type != REFERENCE_TAG && ref->type != REFERENCE_LOCAL_TAG)
    return 1;
   break;
  case 131:
   if (ref->type != REFERENCE_BRANCH && ref->type != REFERENCE_HEAD)
    return 1;
   break;
  case 129:
   if (ref->type != REFERENCE_TRACKED_REMOTE && ref->type != REFERENCE_REMOTE)
    return 1;
   break;
  case 130:
  default:
   break;
  }

 line = add_line_alloc(view, &reference, LINE_DEFAULT, 0, is_all);
 if (!line)
  return 0;

 reference->ref = ref;
 view_column_info_update(view, line);

 return 1;
}
