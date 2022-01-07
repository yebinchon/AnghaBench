
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {scalar_t__ current_used; int * current; int * header; } ;



__attribute__((used)) static void
pool_init(struct pool *p) {
 p->header = ((void*)0);
 p->current = ((void*)0);
 p->current_used = 0;
}
