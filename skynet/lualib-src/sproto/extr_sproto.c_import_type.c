
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sproto_type {int n; int maxn; int base; struct field* f; int name; } ;
struct sproto {int memory; } ;
struct field {int tag; } ;


 int SIZEOF_FIELD ;
 int SIZEOF_HEADER ;
 int SIZEOF_LENGTH ;
 int count_array (int const*) ;
 int * import_field (struct sproto*,struct field*,int const*) ;
 int import_string (struct sproto*,int const*) ;
 int memset (struct sproto_type*,int ,int) ;
 struct field* pool_alloc (int *,int) ;
 int struct_field (int const*,int) ;
 int todword (int const*) ;
 int toword (int const*) ;

__attribute__((used)) static const uint8_t *
import_type(struct sproto *s, struct sproto_type *t, const uint8_t * stream) {
 const uint8_t * result;
 uint32_t sz = todword(stream);
 int i;
 int fn;
 int n;
 int maxn;
 int last;
 stream += SIZEOF_LENGTH;
 result = stream + sz;
 fn = struct_field(stream, sz);
 if (fn <= 0 || fn > 2)
  return ((void*)0);
 for (i=0;i<fn*SIZEOF_FIELD;i+=SIZEOF_FIELD) {

  int v = toword(stream + SIZEOF_HEADER + i);
  if (v != 0)
   return ((void*)0);
 }
 memset(t, 0, sizeof(*t));
 stream += SIZEOF_HEADER + fn * SIZEOF_FIELD;
 t->name = import_string(s, stream);
 if (fn == 1) {
  return result;
 }
 stream += todword(stream)+SIZEOF_LENGTH;
 n = count_array(stream);
 if (n<0)
  return ((void*)0);
 stream += SIZEOF_LENGTH;
 maxn = n;
 last = -1;
 t->n = n;
 t->f = pool_alloc(&s->memory, sizeof(struct field) * n);
 for (i=0;i<n;i++) {
  int tag;
  struct field *f = &t->f[i];
  stream = import_field(s, f, stream);
  if (stream == ((void*)0))
   return ((void*)0);
  tag = f->tag;
  if (tag <= last)
   return ((void*)0);
  if (tag > last+1) {
   ++maxn;
  }
  last = tag;
 }
 t->maxn = maxn;
 t->base = t->f[0].tag;
 n = t->f[n-1].tag - t->base + 1;
 if (n != t->n) {
  t->base = -1;
 }
 return result;
}
