
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_lock {scalar_t__ count; int lock; } ;


 int spinlock_lock (int ) ;

__attribute__((used)) static inline void
socket_lock(struct socket_lock *sl) {
 if (sl->count == 0) {
  spinlock_lock(sl->lock);
 }
 ++sl->count;
}
