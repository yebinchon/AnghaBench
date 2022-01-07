
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sha2_byte ;
typedef int SHA384_CTX ;


 int MEMSET_BZERO (int*,int) ;
 int SHA384_DIGEST_LENGTH ;
 int SHA384_Final (int*,int*) ;
 int assert (int ) ;
 void** sha2_hex_digits ;

char *SHA384_End(SHA384_CTX* context, char buffer[]) {
 sha2_byte digest[SHA384_DIGEST_LENGTH], *d = digest;
 int i;


 assert(context != ((void*)0));

 if (buffer != ((void*)0)) {
  SHA384_Final(digest, context);

  for (i = 0; i < SHA384_DIGEST_LENGTH; i++) {
   *buffer++ = sha2_hex_digits[(*d & 0xf0) >> 4];
   *buffer++ = sha2_hex_digits[*d & 0x0f];
   d++;
  }
  *buffer = 0;
 } else {
  MEMSET_BZERO(context, sizeof(*context));
 }
 MEMSET_BZERO(digest, SHA384_DIGEST_LENGTH);
 return buffer;
}
