
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_index {size_t fill; scalar_t__ data; scalar_t__ size; int next; int step; } ;
typedef int off_t ;


 int debug3 (char*,unsigned long,unsigned long,void*) ;
 int fi_next (struct frame_index*) ;
 int fi_resize (struct frame_index*,size_t) ;
 int memcpy (scalar_t__,int *,size_t) ;

int fi_set(struct frame_index *fi, off_t *offsets, off_t step, size_t fill)
{
 if(fi_resize(fi, fill) == -1) return -1;
 fi->step = step;
 if(offsets != ((void*)0))
 {
  memcpy(fi->data, offsets, fill*sizeof(off_t));
  fi->fill = fill;
 }
 else
 {

  fi->fill = 0;
 }
 fi->next = fi_next(fi);
 debug3("set new index of fill %lu, size %lu at %p",
 (unsigned long)fi->fill, (unsigned long)fi->size, (void*)fi->data);
 return 0;
}
