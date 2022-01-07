
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_lock {scalar_t__ count; int * lock; } ;
struct socket {int dw_lock; } ;



__attribute__((used)) static inline void
socket_lock_init(struct socket *s, struct socket_lock *sl) {
 sl->lock = &s->dw_lock;
 sl->count = 0;
}
