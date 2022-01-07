
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_list {int * tail; int * head; } ;



__attribute__((used)) static inline void
clear_wb_list(struct wb_list *list) {
 list->head = ((void*)0);
 list->tail = ((void*)0);
}
