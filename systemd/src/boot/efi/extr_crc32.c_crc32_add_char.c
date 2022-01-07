
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;


 int* crc32_tab ;

__attribute__((used)) static inline UINT32 crc32_add_char(UINT32 crc, UINT8 c) {
        return crc32_tab[(crc ^ c) & 0xff] ^ (crc >> 8);
}
