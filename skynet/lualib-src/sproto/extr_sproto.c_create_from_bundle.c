
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sproto {int type_n; int protocol_n; int * proto; int * type; int memory; } ;


 int SIZEOF_FIELD ;
 int SIZEOF_HEADER ;
 int SIZEOF_LENGTH ;
 int count_array (int const*) ;
 int * import_protocol (struct sproto*,int *,int const*) ;
 int * import_type (struct sproto*,int *,int const*) ;
 void* pool_alloc (int *,int) ;
 int struct_field (int const*,size_t) ;
 int todword (int const*) ;
 int toword (int const*) ;

__attribute__((used)) static struct sproto *
create_from_bundle(struct sproto *s, const uint8_t * stream, size_t sz) {
 const uint8_t * content;
 const uint8_t * typedata = ((void*)0);
 const uint8_t * protocoldata = ((void*)0);
 int fn = struct_field(stream, sz);
 int i;
 if (fn < 0 || fn > 2)
  return ((void*)0);

 stream += SIZEOF_HEADER;
 content = stream + fn*SIZEOF_FIELD;

 for (i=0;i<fn;i++) {
  int value = toword(stream + i*SIZEOF_FIELD);
  int n;
  if (value != 0)
   return ((void*)0);
  n = count_array(content);
  if (n<0)
   return ((void*)0);
  if (i == 0) {
   typedata = content+SIZEOF_LENGTH;
   s->type_n = n;
   s->type = pool_alloc(&s->memory, n * sizeof(*s->type));
  } else {
   protocoldata = content+SIZEOF_LENGTH;
   s->protocol_n = n;
   s->proto = pool_alloc(&s->memory, n * sizeof(*s->proto));
  }
  content += todword(content) + SIZEOF_LENGTH;
 }

 for (i=0;i<s->type_n;i++) {
  typedata = import_type(s, &s->type[i], typedata);
  if (typedata == ((void*)0)) {
   return ((void*)0);
  }
 }
 for (i=0;i<s->protocol_n;i++) {
  protocoldata = import_protocol(s, &s->proto[i], protocoldata);
  if (protocoldata == ((void*)0)) {
   return ((void*)0);
  }
 }

 return s;
}
