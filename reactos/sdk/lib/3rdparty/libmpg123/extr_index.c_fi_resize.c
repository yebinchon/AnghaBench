
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_index {size_t size; size_t fill; int * data; int next; } ;
typedef int off_t ;


 int debug2 (char*,unsigned long,void*) ;
 int error (char*) ;
 int fi_next (struct frame_index*) ;
 int fi_shrink (struct frame_index*) ;
 int * safe_realloc (int *,size_t) ;

int fi_resize(struct frame_index *fi, size_t newsize)
{
 off_t *newdata = ((void*)0);
 if(newsize == fi->size) return 0;

 if(newsize > 0 && newsize < fi->size)
 {
  while(fi->fill > newsize){ fi_shrink(fi); }
 }

 newdata = safe_realloc(fi->data, newsize*sizeof(off_t));
 if(newsize == 0 || newdata != ((void*)0))
 {
  fi->data = newdata;
  fi->size = newsize;
  if(fi->fill > fi->size) fi->fill = fi->size;

  fi->next = fi_next(fi);
  debug2("new index of size %lu at %p", (unsigned long)fi->size, (void*)fi->data);
  return 0;
 }
 else
 {
  error("failed to resize index!");
  return -1;
 }
}
