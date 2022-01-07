
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_index {int fill; int step; int next; int * data; } ;


 int debug2 (char*,unsigned long,unsigned long) ;
 int fi_next (struct frame_index*) ;

__attribute__((used)) static void fi_shrink(struct frame_index *fi)
{
 if(fi->fill < 2) return;
 else
 {
  size_t c;
  debug2("shrink index with fill %lu and step %lu", (unsigned long)fi->fill, (unsigned long)fi->step);
  fi->step *= 2;
  fi->fill /= 2;

  for(c = 0; c < fi->fill; ++c)
  fi->data[c] = fi->data[2*c];
 }

 fi->next = fi_next(fi);
}
