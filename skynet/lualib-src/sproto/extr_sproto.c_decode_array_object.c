
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sproto_arg {int index; int length; int * value; } ;
typedef scalar_t__ (* sproto_callback ) (struct sproto_arg*) ;


 int SIZEOF_LENGTH ;
 int todword (int *) ;

__attribute__((used)) static int
decode_array_object(sproto_callback cb, struct sproto_arg *args, uint8_t * stream, int sz) {
 uint32_t hsz;
 int index = 1;
 while (sz > 0) {
  if (sz < SIZEOF_LENGTH)
   return -1;
  hsz = todword(stream);
  stream += SIZEOF_LENGTH;
  sz -= SIZEOF_LENGTH;
  if (hsz > sz)
   return -1;
  args->index = index;
  args->value = stream;
  args->length = hsz;
  if (cb(args))
   return -1;
  sz -= hsz;
  stream += hsz;
  ++index;
 }
 return 0;
}
