
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct view {int pos; TYPE_1__* env; int vid; } ;
struct tree_entry {int name; int id; } ;
struct line {int type; struct tree_entry* data; } ;
typedef enum request { ____Placeholder_request } request ;
typedef enum open_flags { ____Placeholder_open_flags } open_flags ;
struct TYPE_2__ {scalar_t__* directory; int file; int ref; } ;




 int OPEN_DEFAULT ;
 int OPEN_SPLIT ;



 int REQ_NONE ;


 int REQ_VIEW_CLOSE ;
 int is_head_commit (int ) ;
 int open_blob_editor (int ,int ,int ) ;
 int open_blob_view (struct view*,int) ;
 int open_editor (int ,int ) ;
 int pop_tree_stack_entry (int *) ;
 int push_tree_stack_entry (struct view*,char const*,int *) ;
 int reload_view (struct view*) ;
 int report (char*) ;
 int reset_view_history (int *) ;
 int string_copy (int ,int ) ;
 char* tree_path (struct line*) ;
 int tree_path_is_parent (int ) ;
 int tree_view_history ;
 int view_is_displayed (struct view*) ;

__attribute__((used)) static enum request
tree_request(struct view *view, enum request request, struct line *line)
{
 enum open_flags flags;
 struct tree_entry *entry = line->data;

 switch (request) {
 case 128:
  if (line->type != 133) {
   report("Blame only supported for files");
   return REQ_NONE;
  }

  string_copy(view->env->ref, view->vid);
  return request;

 case 131:
  if (line->type != 133) {
   report("Edit only supported for files");
  } else if (!is_head_commit(view->vid)) {
   open_blob_editor(entry->id, entry->name, 0);
  } else {
   open_editor(view->env->file, 0);
  }
  return REQ_NONE;

 case 129:
 case 132:
  if (!*view->env->directory) {

   return REQ_VIEW_CLOSE;
  }

  pop_tree_stack_entry(&view->pos);
  reload_view(view);
  return REQ_NONE;

 case 130:
  break;

 default:
  return request;
 }


 if (!*view->env->directory)
  reset_view_history(&tree_view_history);

 switch (line->type) {
 case 134:


  if (tree_path_is_parent(entry->name) && *view->env->directory) {
   pop_tree_stack_entry(&view->pos);

  } else {
   const char *basename = tree_path(line);

   push_tree_stack_entry(view, basename, &view->pos);
  }



  reload_view(view);
  break;

 case 133:
  flags = view_is_displayed(view) ? OPEN_SPLIT : OPEN_DEFAULT;
  open_blob_view(view, flags);
  break;

 default:
  return REQ_NONE;
 }

 return REQ_NONE;
}
