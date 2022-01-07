
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void
Hash(const char * str, int sz, uint8_t key[8]) {
 uint32_t djb_hash = 5381L;
 uint32_t js_hash = 1315423911L;

 int i;
 for (i=0;i<sz;i++) {
  uint8_t c = (uint8_t)str[i];
  djb_hash += (djb_hash << 5) + c;
  js_hash ^= ((js_hash << 5) + c + (js_hash >> 2));
 }

 key[0] = djb_hash & 0xff;
 key[1] = (djb_hash >> 8) & 0xff;
 key[2] = (djb_hash >> 16) & 0xff;
 key[3] = (djb_hash >> 24) & 0xff;

 key[4] = js_hash & 0xff;
 key[5] = (js_hash >> 8) & 0xff;
 key[6] = (js_hash >> 16) & 0xff;
 key[7] = (js_hash >> 24) & 0xff;
}
