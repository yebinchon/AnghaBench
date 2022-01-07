
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int crc64 (int ,unsigned char*,size_t) ;

uint64_t crc64Hash(char *key, size_t len) {
    return crc64(0,(unsigned char*)key,len);
}
