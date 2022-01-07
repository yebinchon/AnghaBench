
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sproto {int type_n; int * type; } ;
struct field {int tag; int type; int key; int extra; int * name; int * st; } ;


 int SIZEOF_FIELD ;
 int SIZEOF_HEADER ;
 int SIZEOF_LENGTH ;
 int SPROTO_TARRAY ;
 int SPROTO_TINTEGER ;
 int SPROTO_TSTRING ;
 int SPROTO_TSTRUCT ;
 int calc_pow (int,int) ;
 int * import_string (struct sproto*,int const*) ;
 int struct_field (int const*,int) ;
 int todword (int const*) ;
 int toword (int const*) ;

__attribute__((used)) static const uint8_t *
import_field(struct sproto *s, struct field *f, const uint8_t * stream) {
 uint32_t sz;
 const uint8_t * result;
 int fn;
 int i;
 int array = 0;
 int tag = -1;
 f->tag = -1;
 f->type = -1;
 f->name = ((void*)0);
 f->st = ((void*)0);
 f->key = -1;
 f->extra = 0;

 sz = todword(stream);
 stream += SIZEOF_LENGTH;
 result = stream + sz;
 fn = struct_field(stream, sz);
 if (fn < 0)
  return ((void*)0);
 stream += SIZEOF_HEADER;
 for (i=0;i<fn;i++) {
  int value;
  ++tag;
  value = toword(stream + SIZEOF_FIELD * i);
  if (value & 1) {
   tag+= value/2;
   continue;
  }
  if (tag == 0) {
   if (value != 0)
    return ((void*)0);
   f->name = import_string(s, stream + fn * SIZEOF_FIELD);
   continue;
  }
  if (value == 0)
   return ((void*)0);
  value = value/2 - 1;
  switch(tag) {
  case 1:
   if (value >= SPROTO_TSTRUCT)
    return ((void*)0);
   f->type = value;
   break;
  case 2:
   if (f->type == SPROTO_TINTEGER) {
    f->extra = calc_pow(10, value);
   } else if (f->type == SPROTO_TSTRING) {
    f->extra = value;
   } else {
    if (value >= s->type_n)
     return ((void*)0);
    if (f->type >= 0)
     return ((void*)0);
    f->type = SPROTO_TSTRUCT;
    f->st = &s->type[value];
   }
   break;
  case 3:
   f->tag = value;
   break;
  case 4:
   if (value)
    array = SPROTO_TARRAY;
   break;
  case 5:
   f->key = value;
   break;
  default:
   return ((void*)0);
  }
 }
 if (f->tag < 0 || f->type < 0 || f->name == ((void*)0))
  return ((void*)0);
 f->type |= array;

 return result;
}
