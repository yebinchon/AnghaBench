
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void int16_to_3packedchars(short int value, char* buf)
{


    int i;
    for (i = 2; i >= 0; i--) {
        buf[i] = (value & 0x001f) + 0x60;
        value = (value >> 5);
    }
    buf[3] = '\0';
}
