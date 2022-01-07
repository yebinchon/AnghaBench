
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_lock {scalar_t__ count; int lock; } ;


 int spinlock_trylock (int ) ;

__attribute__((used)) static inline int
socket_trylock(struct socket_lock *sl) {
 if (sl->count == 0) {
  if (!spinlock_trylock(sl->lock))
   return 0;
 }
 ++sl->count;
 return 1;
}
