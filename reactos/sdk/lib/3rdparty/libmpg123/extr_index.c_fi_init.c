
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_index {int step; int next; scalar_t__ grow_size; scalar_t__ size; scalar_t__ fill; int * data; } ;


 int fi_next (struct frame_index*) ;

void fi_init(struct frame_index *fi)
{
 fi->data = ((void*)0);
 fi->step = 1;
 fi->fill = 0;
 fi->size = 0;
 fi->grow_size = 0;
 fi->next = fi_next(fi);
}
