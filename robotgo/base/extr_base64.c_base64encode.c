
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int assert (int) ;
 int* b64_encode_table ;
 int* malloc (size_t const) ;

uint8_t *base64encode(const uint8_t *src, const size_t buflen, size_t *retlen){
 size_t i, j;
 const size_t maxlen = (((buflen + 3) & ~3)) * 4;
 uint8_t *encoded = malloc(maxlen + 1);
 if (encoded == ((void*)0)) return ((void*)0);


 assert(src != ((void*)0));
 assert(buflen > 0);

 j = 0;
 for (i = 0; i < buflen + 1; ++i) {

  switch (i % 3) {
   case 0:
    encoded[j++] = b64_encode_table[src[i] >> 2];
    encoded[j++] = b64_encode_table[((src[i] & 0x03) << 4) |
                                    ((src[i + 1] & 0xF0) >> 4)];
    break;
   case 1:
    encoded[j++] = b64_encode_table[((src[i] & 0x0F) << 2) |
                                    ((src[i + 1] & 0xC0) >> 6)];
    break;
   case 2:
    encoded[j++] = b64_encode_table[(src[i] & 0x3F)];
    break;
  }
 }


 if ((j % 4) != 0) {
  const size_t with_padding = ((j + 3) & ~3);
  do {
   encoded[j++] = '=';
  } while (j < with_padding);
 }

 assert(j <= maxlen);

 if (retlen != ((void*)0)) *retlen = j;
 encoded[j] = '\0';
 return encoded;
}
