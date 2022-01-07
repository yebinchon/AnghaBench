
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_index {int * data; scalar_t__ size; } ;


 int debug2 (char*,void*,unsigned long) ;
 int fi_init (struct frame_index*) ;
 int free (int *) ;

void fi_exit(struct frame_index *fi)
{
 debug2("fi_exit: %p and %lu", (void*)fi->data, (unsigned long)fi->size);
 if(fi->size && fi->data != ((void*)0)) free(fi->data);

 fi_init(fi);
}
