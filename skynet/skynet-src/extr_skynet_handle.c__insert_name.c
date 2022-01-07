
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct handle_storage {int name_count; struct handle_name* name; } ;
struct handle_name {int name; } ;


 int _insert_name_before (struct handle_storage*,char*,int ,int) ;
 char* skynet_strdup (char const*) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static const char *
_insert_name(struct handle_storage *s, const char * name, uint32_t handle) {
 int begin = 0;
 int end = s->name_count - 1;
 while (begin<=end) {
  int mid = (begin+end)/2;
  struct handle_name *n = &s->name[mid];
  int c = strcmp(n->name, name);
  if (c==0) {
   return ((void*)0);
  }
  if (c<0) {
   begin = mid + 1;
  } else {
   end = mid - 1;
  }
 }
 char * result = skynet_strdup(name);

 _insert_name_before(s, result, handle, begin);

 return result;
}
