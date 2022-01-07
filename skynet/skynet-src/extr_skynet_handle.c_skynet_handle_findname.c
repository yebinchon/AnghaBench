
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct handle_storage {int name_count; int lock; struct handle_name* name; } ;
struct handle_name {int handle; int name; } ;


 struct handle_storage* H ;
 int rwlock_rlock (int *) ;
 int rwlock_runlock (int *) ;
 int strcmp (int ,char const*) ;

uint32_t
skynet_handle_findname(const char * name) {
 struct handle_storage *s = H;

 rwlock_rlock(&s->lock);

 uint32_t handle = 0;

 int begin = 0;
 int end = s->name_count - 1;
 while (begin<=end) {
  int mid = (begin+end)/2;
  struct handle_name *n = &s->name[mid];
  int c = strcmp(n->name, name);
  if (c==0) {
   handle = n->handle;
   break;
  }
  if (c<0) {
   begin = mid + 1;
  } else {
   end = mid - 1;
  }
 }

 rwlock_runlock(&s->lock);

 return handle;
}
