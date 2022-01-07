
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int uint8_t ;
struct sproto_arg {int type; int index; int* value; int length; } ;
typedef int (* sproto_callback ) (struct sproto_arg*) ;


 int SIZEOF_LENGTH ;
 int SPROTO_CB_NIL ;
 int SPROTO_CB_NOARRAY ;


 int* encode_integer_array (int (*) (struct sproto_arg*),struct sproto_arg*,int*,int,int*) ;
 int fill_size (int*,int) ;

__attribute__((used)) static int
encode_array(sproto_callback cb, struct sproto_arg *args, uint8_t *data, int size) {
 uint8_t * buffer;
 int sz;
 if (size < SIZEOF_LENGTH)
  return -1;
 size -= SIZEOF_LENGTH;
 buffer = data + SIZEOF_LENGTH;
 switch (args->type) {
 case 128: {
  int noarray;
  buffer = encode_integer_array(cb,args,buffer,size, &noarray);
  if (buffer == ((void*)0))
   return -1;

  if (noarray) {
   return 0;
  }
  break;
 }
 case 129:
  args->index = 1;
  for (;;) {
   int v = 0;
   args->value = &v;
   args->length = sizeof(v);
   sz = cb(args);
   if (sz < 0) {
    if (sz == SPROTO_CB_NIL)
     break;
    if (sz == SPROTO_CB_NOARRAY)
     return 0;
    return -1;
   }
   if (size < 1)
    return -1;
   buffer[0] = v ? 1: 0;
   size -= 1;
   buffer += 1;
   ++args->index;
  }
  break;
 default:
  args->index = 1;
  for (;;) {
   if (size < SIZEOF_LENGTH)
    return -1;
   size -= SIZEOF_LENGTH;
   args->value = buffer+SIZEOF_LENGTH;
   args->length = size;
   sz = cb(args);
   if (sz < 0) {
    if (sz == SPROTO_CB_NIL) {
     break;
    }
    if (sz == SPROTO_CB_NOARRAY)
     return 0;
    return -1;
   }
   fill_size(buffer, sz);
   buffer += SIZEOF_LENGTH+sz;
   size -=sz;
   ++args->index;
  }
  break;
 }
 sz = buffer - (data + SIZEOF_LENGTH);
 return fill_size(data, sz);
}
