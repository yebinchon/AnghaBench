
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void lwTranslatePixelsGroup(int byte, char *output) {
    int code = 0x2800 + byte;



    output[0] = 0xE0 | (code >> 12);
    output[1] = 0x80 | ((code >> 6) & 0x3F);
    output[2] = 0x80 | (code & 0x3F);
}
