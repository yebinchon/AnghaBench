
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sproto_arg {int length; int * value; } ;
typedef int (* sproto_callback ) (struct sproto_arg*) ;


 int SIZEOF_LENGTH ;
 int SPROTO_CB_NIL ;
 int assert (int) ;
 int fill_size (int *,int) ;

__attribute__((used)) static int
encode_object(sproto_callback cb, struct sproto_arg *args, uint8_t *data, int size) {
 int sz;
 if (size < SIZEOF_LENGTH)
  return -1;
 args->value = data+SIZEOF_LENGTH;
 args->length = size-SIZEOF_LENGTH;
 sz = cb(args);
 if (sz < 0) {
  if (sz == SPROTO_CB_NIL)
   return 0;
  return -1;
 }
 assert(sz <= size-SIZEOF_LENGTH);
 return fill_size(data, sz);
}
