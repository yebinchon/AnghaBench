
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_lock {scalar_t__ count; int lock; } ;


 int assert (int) ;
 int spinlock_unlock (int ) ;

__attribute__((used)) static inline void
socket_unlock(struct socket_lock *sl) {
 --sl->count;
 if (sl->count <= 0) {
  assert(sl->count == 0);
  spinlock_unlock(sl->lock);
 }
}
