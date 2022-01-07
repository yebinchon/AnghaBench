
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sproto {int memory; } ;


 int SIZEOF_LENGTH ;
 int memcpy (char*,int const*,int) ;
 char* pool_alloc (int *,int) ;
 int todword (int const*) ;

__attribute__((used)) static const char *
import_string(struct sproto *s, const uint8_t * stream) {
 uint32_t sz = todword(stream);
 char * buffer = pool_alloc(&s->memory, sz+1);
 memcpy(buffer, stream+SIZEOF_LENGTH, sz);
 buffer[sz] = '\0';
 return buffer;
}
