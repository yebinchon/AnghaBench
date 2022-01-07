
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int le16toh (int ) ;

__attribute__((used)) static void disk_identify_fixup_uint16 (uint8_t identify[512], unsigned offset_words) {
        uint16_t *p;

        p = (uint16_t *) identify;
        p[offset_words] = le16toh (p[offset_words]);
}
