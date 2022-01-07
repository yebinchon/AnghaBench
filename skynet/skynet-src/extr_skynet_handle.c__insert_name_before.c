
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct handle_storage {int name_count; int name_cap; struct handle_name* name; } ;
struct handle_name {char* name; int handle; } ;


 int MAX_SLOT_SIZE ;
 int assert (int) ;
 int skynet_free (struct handle_name*) ;
 struct handle_name* skynet_malloc (int) ;

__attribute__((used)) static void
_insert_name_before(struct handle_storage *s, char *name, uint32_t handle, int before) {
 if (s->name_count >= s->name_cap) {
  s->name_cap *= 2;
  assert(s->name_cap <= MAX_SLOT_SIZE);
  struct handle_name * n = skynet_malloc(s->name_cap * sizeof(struct handle_name));
  int i;
  for (i=0;i<before;i++) {
   n[i] = s->name[i];
  }
  for (i=before;i<s->name_count;i++) {
   n[i+1] = s->name[i];
  }
  skynet_free(s->name);
  s->name = n;
 } else {
  int i;
  for (i=s->name_count;i>before;i--) {
   s->name[i] = s->name[i-1];
  }
 }
 s->name[before].name = name;
 s->name[before].handle = handle;
 s->name_count ++;
}
