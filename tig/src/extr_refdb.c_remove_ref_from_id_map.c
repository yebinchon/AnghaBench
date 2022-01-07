
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int id; struct ref* next; } ;


 int refs_by_id ;
 void** string_map_get_at (int *,int ) ;
 int string_map_remove (int *,int ) ;

__attribute__((used)) static void
remove_ref_from_id_map(struct ref *ref)
{
 void **ref_slot = string_map_get_at(&refs_by_id, ref->id);
 struct ref *list = ref_slot ? *ref_slot : ((void*)0);
 struct ref *prev = ((void*)0);

 for (; list; prev = list, list = list->next) {
  if (list != ref)
   continue;

  if (!prev)
   *ref_slot = ref->next;
  else
   prev->next = ref->next;
  ref->next = ((void*)0);
  break;
 }

 if (ref_slot && !*ref_slot)
  string_map_remove(&refs_by_id, ref->id);
}
