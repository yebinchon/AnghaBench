
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_list {int * tail; int * head; } ;


 int assert (int ) ;

__attribute__((used)) static inline void
check_wb_list(struct wb_list *s) {
 assert(s->head == ((void*)0));
 assert(s->tail == ((void*)0));
}
