
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_index {scalar_t__ fill; scalar_t__ step; scalar_t__ size; scalar_t__ grow_size; scalar_t__ next; scalar_t__* data; } ;
typedef scalar_t__ off_t ;


 int debug1 (char*,void*) ;
 int debug3 (char*,long,unsigned long,unsigned long) ;
 scalar_t__ fi_next (struct frame_index*) ;
 scalar_t__ fi_resize (struct frame_index*,scalar_t__) ;
 int fi_shrink (struct frame_index*) ;

void fi_add(struct frame_index *fi, off_t pos)
{
 debug3("wanting to add to fill %lu, step %lu, size %lu", (unsigned long)fi->fill, (unsigned long)fi->step, (unsigned long)fi->size);
 if(fi->fill == fi->size)
 {

  off_t framenum = fi->fill*fi->step;

  if( !(fi->grow_size && fi_resize(fi, fi->size+fi->grow_size)==0) )
  fi_shrink(fi);


  if(fi->next != framenum) return;
 }

 if(fi->fill < fi->size)
 {
  debug1("adding to index at %p", (void*)(fi->data+fi->fill));
  fi->data[fi->fill] = pos;
  ++fi->fill;
  fi->next = fi_next(fi);
  debug3("added pos %li to index with fill %lu and step %lu", (long) pos, (unsigned long)fi->fill, (unsigned long)fi->step);
 }
}
