
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct view {TYPE_1__* env; int ref; } ;
struct reference {TYPE_2__* ref; } ;
struct line {struct reference* data; } ;
struct TYPE_4__ {int name; int id; } ;
struct TYPE_3__ {int ref; int head; } ;


 int REFS_ALL_NAME ;
 int ref_update_env (TYPE_1__*,TYPE_2__*,int) ;
 scalar_t__ refs_is_all (struct reference*) ;
 int string_copy (int ,int ) ;
 int string_copy_rev (int ,int ) ;
 int string_ncopy (int ,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static void
refs_select(struct view *view, struct line *line)
{
 struct reference *reference = line->data;

 if (refs_is_all(reference)) {
  string_copy(view->ref, REFS_ALL_NAME);
  return;
 }
 string_copy_rev(view->ref, reference->ref->id);
 string_copy_rev(view->env->head, reference->ref->id);
 string_ncopy(view->env->ref, reference->ref->name, strlen(reference->ref->name));
 ref_update_env(view->env, reference->ref, 0);
}
