
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crc16 (char*,int) ;

unsigned int keyHashSlot(char *key, int keylen) {
    int s, e;

    for (s = 0; s < keylen; s++)
        if (key[s] == '{') break;


    if (s == keylen) return crc16(key,keylen) & 0x3FFF;


    for (e = s+1; e < keylen; e++)
        if (key[e] == '}') break;


    if (e == keylen || e == s+1) return crc16(key,keylen) & 0x3FFF;



    return crc16(key+s+1,e-s-1) & 0x3FFF;
}
