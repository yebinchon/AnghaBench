
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getRandomBytes (unsigned char*,size_t) ;

void RM_GetRandomBytes(unsigned char *dst, size_t len) {
    getRandomBytes(dst,len);
}
