
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sproto {int type_n; int * type; } ;
struct protocol {int tag; int confirm; int * name; int ** p; } ;


 int SIZEOF_FIELD ;
 int SIZEOF_HEADER ;
 int SIZEOF_LENGTH ;
 size_t SPROTO_REQUEST ;
 size_t SPROTO_RESPONSE ;
 int * import_string (struct sproto*,int const*) ;
 int struct_field (int const*,int) ;
 int todword (int const*) ;
 int toword (int const*) ;

__attribute__((used)) static const uint8_t *
import_protocol(struct sproto *s, struct protocol *p, const uint8_t * stream) {
 const uint8_t * result;
 uint32_t sz = todword(stream);
 int fn;
 int i;
 int tag;
 stream += SIZEOF_LENGTH;
 result = stream + sz;
 fn = struct_field(stream, sz);
 stream += SIZEOF_HEADER;
 p->name = ((void*)0);
 p->tag = -1;
 p->p[SPROTO_REQUEST] = ((void*)0);
 p->p[SPROTO_RESPONSE] = ((void*)0);
 p->confirm = 0;
 tag = 0;
 for (i=0;i<fn;i++,tag++) {
  int value = toword(stream + SIZEOF_FIELD * i);
  if (value & 1) {
   tag += (value-1)/2;
   continue;
  }
  value = value/2 - 1;
  switch (i) {
  case 0:
   if (value != -1) {
    return ((void*)0);
   }
   p->name = import_string(s, stream + SIZEOF_FIELD *fn);
   break;
  case 1:
   if (value < 0) {
    return ((void*)0);
   }
   p->tag = value;
   break;
  case 2:
   if (value < 0 || value>=s->type_n)
    return ((void*)0);
   p->p[SPROTO_REQUEST] = &s->type[value];
   break;
  case 3:
   if (value < 0 || value>=s->type_n)
    return ((void*)0);
   p->p[SPROTO_RESPONSE] = &s->type[value];
   break;
  case 4:
   p->confirm = value;
   break;
  default:
   return ((void*)0);
  }
 }

 if (p->name == ((void*)0) || p->tag<0) {
  return ((void*)0);
 }

 return result;
}
