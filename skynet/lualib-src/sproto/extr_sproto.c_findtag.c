
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sproto_type {scalar_t__ base; int n; struct field* f; } ;
struct field {int tag; } ;



__attribute__((used)) static struct field *
findtag(const struct sproto_type *st, int tag) {
 int begin, end;
 if (st->base >=0 ) {
  tag -= st->base;
  if (tag < 0 || tag >= st->n)
   return ((void*)0);
  return &st->f[tag];
 }
 begin = 0;
 end = st->n;
 while (begin < end) {
  int mid = (begin+end)/2;
  struct field *f = &st->f[mid];
  int t = f->tag;
  if (t == tag) {
   return f;
  }
  if (tag > t) {
   begin = mid + 1;
  } else {
   end = mid;
  }
 }
 return ((void*)0);
}
