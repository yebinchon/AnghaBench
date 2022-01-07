
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ UINTN ;
typedef int UINT8 ;
typedef int UINT32 ;


 int crc32_add_char (int ,int ) ;

UINT32 crc32(UINT32 seed, const VOID *buf, UINTN len) {
        const UINT8 *p = buf;
        UINT32 crc = seed;

        while (len > 0) {
                crc = crc32_add_char(crc, *p++);
                len--;
        }

        return crc;
}
