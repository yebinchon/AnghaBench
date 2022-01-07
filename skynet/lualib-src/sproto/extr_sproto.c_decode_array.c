
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct sproto_arg {int type; int index; int* value; int length; } ;
typedef int (* sproto_callback ) (struct sproto_arg*) ;


 int SIZEOF_INT32 ;
 int SIZEOF_INT64 ;
 int SIZEOF_LENGTH ;




 int decode_array_object (int (*) (struct sproto_arg*),struct sproto_arg*,int*,scalar_t__) ;
 int expand64 (void*) ;
 void* todword (int*) ;

__attribute__((used)) static int
decode_array(sproto_callback cb, struct sproto_arg *args, uint8_t * stream) {
 uint32_t sz = todword(stream);
 int type = args->type;
 int i;
 if (sz == 0) {

  args->index = -1;
  args->value = ((void*)0);
  args->length = 0;
  cb(args);
  return 0;
 }
 stream += SIZEOF_LENGTH;
 switch (type) {
 case 130: {
  int len = *stream;
  ++stream;
  --sz;
  if (len == SIZEOF_INT32) {
   if (sz % SIZEOF_INT32 != 0)
    return -1;
   for (i=0;i<sz/SIZEOF_INT32;i++) {
    uint64_t value = expand64(todword(stream + i*SIZEOF_INT32));
    args->index = i+1;
    args->value = &value;
    args->length = sizeof(value);
    cb(args);
   }
  } else if (len == SIZEOF_INT64) {
   if (sz % SIZEOF_INT64 != 0)
    return -1;
   for (i=0;i<sz/SIZEOF_INT64;i++) {
    uint64_t low = todword(stream + i*SIZEOF_INT64);
    uint64_t hi = todword(stream + i*SIZEOF_INT64 + SIZEOF_INT32);
    uint64_t value = low | hi << 32;
    args->index = i+1;
    args->value = &value;
    args->length = sizeof(value);
    cb(args);
   }
  } else {
   return -1;
  }
  break;
 }
 case 131:
  for (i=0;i<sz;i++) {
   uint64_t value = stream[i];
   args->index = i+1;
   args->value = &value;
   args->length = sizeof(value);
   cb(args);
  }
  break;
 case 129:
 case 128:
  return decode_array_object(cb, args, stream, sz);
 default:
  return -1;
 }
 return 0;
}
