
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int int8_t ;


 int assert (int ) ;
 int* b64_decode_table ;
 size_t* malloc (size_t const) ;

uint8_t *base64decode(const uint8_t *src, const size_t buflen, size_t *retlen){
 int8_t digit, lastdigit;
 size_t i, j;
 uint8_t *decoded;
 const size_t maxlen = ((buflen + 3) / 4) * 3;


 assert(src != ((void*)0));

 digit = lastdigit = j = 0;
 decoded = malloc(maxlen + 1);
 if (decoded == ((void*)0)) return ((void*)0);
 for (i = 0; i < buflen; ++i) {
  if ((digit = b64_decode_table[src[i]]) != -1) {

   switch (i % 4) {
    case 1:
     decoded[j++] = ((lastdigit << 2) | ((digit & 0x30) >> 4));
     break;
    case 2:
     decoded[j++] = (((lastdigit & 0xF) << 4) | ((digit & 0x3C) >> 2));
     break;
    case 3:
     decoded[j++] = (((lastdigit & 0x03) << 6) | digit);
     break;
   }
   lastdigit = digit;
  }
 }

 if (retlen != ((void*)0)) *retlen = j;
 decoded[j] = '\0';
 return decoded;
}
