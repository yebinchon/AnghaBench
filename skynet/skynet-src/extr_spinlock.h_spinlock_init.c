
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spinlock {scalar_t__ lock; } ;



__attribute__((used)) static inline void
spinlock_init(struct spinlock *lock) {
 lock->lock = 0;
}
