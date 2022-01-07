
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int disk_identify_get_string (int *,unsigned int,char*,size_t) ;

__attribute__((used)) static void disk_identify_fixup_string(
                uint8_t identify[512],
                unsigned offset_words,
                size_t len) {
        disk_identify_get_string(identify, offset_words,
                                 (char *) identify + offset_words * 2, len);
}
