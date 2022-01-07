
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static __inline uint32_t lzo_max_outlen(uint32_t inlen) {
    return inlen + (inlen / 16) + 64 + 3;
}
