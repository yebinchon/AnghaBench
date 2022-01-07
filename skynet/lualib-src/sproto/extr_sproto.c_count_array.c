
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ SIZEOF_LENGTH ;
 scalar_t__ todword (int const*) ;

__attribute__((used)) static int
count_array(const uint8_t * stream) {
 uint32_t length = todword(stream);
 int n = 0;
 stream += SIZEOF_LENGTH;
 while (length > 0) {
  uint32_t nsz;
  if (length < SIZEOF_LENGTH)
   return -1;
  nsz = todword(stream);
  nsz += SIZEOF_LENGTH;
  if (nsz > length)
   return -1;
  ++n;
  stream += nsz;
  length -= nsz;
 }

 return n;
}
